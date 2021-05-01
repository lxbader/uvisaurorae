import logging
import time
import warnings
from itertools import product, repeat
from multiprocessing import Pool, cpu_count

import importlib_resources
import numpy as np
import spiceypy as spice
from shapely.geometry import Point, Polygon, box
from tqdm import tqdm

from uvisaurorae.data_retrieval import make_metakernel


logger = logging.getLogger(__name__)


class UVISAuroralProjector(object):
    def __init__(self, nbins_lon, nbins_lat, spice_dir, raise_spice_insufficient=True):
        # Set up binning
        self.lon_bins = np.linspace(0, 360, num=nbins_lon + 1)
        self.lat_bins = np.linspace(-90, 90, num=nbins_lat + 1)
        self.lon_centers = self.lon_bins[:-1] + np.diff(self.lon_bins) / 2
        self.lat_centers = self.lat_bins[:-1] + np.diff(self.lat_bins) / 2

        # Determine bin-binning for polar pixels (combine bins near the pole for projection speed)
        self.bin_map = np.full((len(self.lon_centers), len(self.lat_centers)), np.nan)
        self.is_master_bin = np.zeros(self.bin_map.shape, dtype=bool)
        bin_colat_start = 85
        for lat_idx in np.where(np.abs(self.lat_centers) > bin_colat_start)[0]:
            n_bins = (
                (90 - np.abs(self.lat_centers[lat_idx])) / (90 - bin_colat_start)
            ) ** 2 * len(self.lon_centers)
            self.bin_map[:, lat_idx] = (
                np.digitize(self.lon_centers, np.linspace(0, 360, int(n_bins) + 1)) - 1
            )
            for i in np.unique(self.bin_map[:, lat_idx]):
                tmp = np.where(self.bin_map[:, lat_idx] == i)[0]
                self.is_master_bin[int(np.mean(tmp)), lat_idx] = True

        self.spice_dir = spice_dir
        self.metakernels = []
        self.raise_spice_insufficient = raise_spice_insufficient

    def reset_spice(self):
        # Clear SPICE kernels
        spice.kclear()

        # Load SPICE kernels
        metakernel = make_metakernel(self.spice_dir)
        time.sleep(0.5)  # Need to wait for a bit here to avoid file reading errors
        spice.furnsh(str(metakernel))
        self.metakernels.append(metakernel)

        # Load some additional SPICE kernels if not loaded already
        # Note that "saturn1100.tpc" redefines the size of Saturn (may be needed to refresh the kernel pool before other
        # calculations using this parameter are performed)
        for kernel in ["naif0012.tls", "saturn1100.tpc", "frame_ksmag.tf"]:
            k = importlib_resources.files(
                "uvis_auroral_projections.resources"
            ).joinpath(kernel)
            try:
                spice.kinfo(str(k))
            except spice.stypes.SpiceyError:
                spice.furnsh(str(k))

    def remove_metakernels(self):
        for mk in self.metakernels:
            if mk.exists():
                mk.unlink()
        self.metakernels = []

    @staticmethod
    def get_fov_vectors(line_bin, ul_corner_line, lr_corner_line):
        # Calculate number of pixels along the sensor
        npx = int(np.ceil((lr_corner_line + 1 - ul_corner_line) / line_bin))

        # Get UVIS_FUV FOV (NAIF ID of UVIS_FUV -82840, max number of vectors returned)
        _, _, boresight, _, boundvec = spice.getfov(-82840, 100)

        # Get all angles between corner points of the field of view
        all_angles = []
        for iii in range(len(boundvec)):
            for jjj in range(iii + 1, len(boundvec)):
                all_angles.append(np.arccos(np.dot(boundvec[iii], boundvec[jjj])))
        all_angles = np.sort(np.unique(np.array(all_angles)))
        width_rad = all_angles[0]  # short side
        length_rad = all_angles[1]  # long side

        # Get all corner points between detector pixels
        all_corners = np.full((npx + 1, 2, 3), np.nan)
        corner_bins = np.arange(ul_corner_line - 32, lr_corner_line + 2 - 32, line_bin)
        for iii in range(len(corner_bins)):
            all_corners[iii, 0, :] = spice.rotvec(
                spice.rotvec(boresight, width_rad / 2, 2),
                length_rad / 64 * corner_bins[iii],
                1,
            )
            all_corners[iii, 1, :] = spice.rotvec(
                spice.rotvec(boresight, -width_rad / 2, 2),
                length_rad / 64 * corner_bins[iii],
                1,
            )

        # Determine the 1 center and 4 corner viewing directions of each pixel in the UVIS_FUV frame
        fov_centers = np.full((npx, 3), np.nan)
        fov_corners = np.full((npx, 4, 3), np.nan)
        center_bins = corner_bins[:-1] + np.diff(corner_bins) / 2
        for iii in range(npx):
            fov_corners[iii, :2, :] = all_corners[iii, :, :]
            fov_corners[iii, 2:, :] = all_corners[iii + 1, ::-1, :]
            fov_centers[iii, :] = spice.rotvec(
                boresight, length_rad / 64 * center_bins[iii], 1
            )

        # Get some support vectors along the pixel corners
        n_supp = 2
        fov_corners_supp = np.full((npx, 4 * (n_supp + 1), 3), np.nan)
        for iii in range(npx):
            cnt = 0
            for ccc in range(4):
                start_vec = fov_corners[iii, ccc, :]
                end_vec = fov_corners[iii, (ccc + 1) % 4, :]
                for sss in range(n_supp + 1):
                    fov_corners_supp[iii, cnt, :] = (
                        start_vec * (n_supp + 1 - sss) + end_vec * sss
                    ) / (n_supp + 1)
                    cnt += 1

        return fov_centers, fov_corners_supp

    def proj_point(self, view_dir, et_time):
        try:
            with spice.no_found_check():
                center_proj_cart, _, _, found = spice.sincpt(
                    "ELLIPSOID",
                    "SATURN",
                    et_time,
                    "CASSINI_KSMAG",
                    "LT+S",
                    "CASSINI",
                    "CASSINI_UVIS_FUV",
                    view_dir,
                )
            if not found:
                return np.array([np.nan, np.nan]), np.nan
        except (spice.utils.exceptions.SpiceSPKINSUFFDATA, spice.utils.exceptions.SpiceCKINSUFFDATA) as e:
            if self.raise_spice_insufficient:
                raise e
            else:
                logger.warning("Insufficient SPICE data to calculate surface intercept, ignored")
                return np.array([np.nan, np.nan]), np.nan

        center_proj_sph = np.array(spice.reclat(center_proj_cart))
        center_proj_sph[1:] *= 180 / np.pi
        # 0 LT/lon starts at -X axis
        center_proj_sph[1] = (center_proj_sph[1] + 180) % 360
        # Calculate viewing angle
        radii = spice.bodvrd("SATURN", "RADII", 3)[1]
        sfnm = spice.surfnm(*radii, center_proj_cart)
        viewdir_ksm = spice.mxv(
            spice.pxform("CASSINI_UVIS_FUV", "CASSINI_KSMAG", et_time), view_dir
        )
        rad_angle = spice.vsep(viewdir_ksm, sfnm) - np.pi / 2
        return center_proj_sph[1:], rad_angle / np.pi * 180


def project_data_parallel(
    projector,
    integrated_data,
    et_times,
    line_bin,
    ul_corner_line,
    lr_corner_line,
    records=None,
    n_workers=None,
):
    tstart = time.time()
    logger.info("Starting projection in parallel mode")
    if n_workers is None:
        n_workers = cpu_count()
        logger.info(f"Auto setting to use {n_workers} workers")
    n_workers = min(n_workers, cpu_count())

    if records is None:
        records = np.arange(integrated_data.shape[0] - 1)
    records = records.astype(int)
    record_lists = np.array_split(records, n_workers)
    record_lists = [r for r in record_lists if len(r)]

    with Pool(n_workers) as p:
        output = p.starmap(
            project_data,
            zip(
                repeat(projector),
                repeat(integrated_data),
                repeat(et_times),
                repeat(line_bin),
                repeat(ul_corner_line),
                repeat(lr_corner_line),
                record_lists,
                repeat(True),
            ),
        )

    proj_sum = np.sum(np.array(output)[:, 0], axis=0)
    proj_num = np.sum(np.array(output)[:, 1], axis=0)
    with warnings.catch_warnings():
        warnings.filterwarnings("ignore")
        proj_min_angle = np.nanmin(np.array(output)[:, 2], axis=0)
    proj_min_angle[proj_num == 0] = np.nan

    tstop = time.time()
    logger.info("Projection successful, took {:0.1f} seconds".format(tstop - tstart))

    return proj_sum, proj_num, proj_min_angle


def project_data(
    projector,
    integrated_data,
    et_times,
    line_bin,
    ul_corner_line,
    lr_corner_line,
    records=None,
    disable_progress=False,
):
    tstart = time.time()
    if not disable_progress:
        logger.info("Starting projection")

    # Set up output arrays
    nbins_lon = len(projector.lon_centers)
    nbins_lat = len(projector.lat_centers)
    proj_sum = np.zeros((nbins_lon, nbins_lat))
    proj_num = np.zeros((nbins_lon, nbins_lat))
    proj_min_angle = np.full((nbins_lon, nbins_lat), np.nan)

    projector.reset_spice()

    # Make list of records if needed
    if records is None:
        records = np.arange(integrated_data.shape[0] - 1)
    records = records.astype(int)

    fov_centers, fov_corners = projector.get_fov_vectors(
        line_bin, ul_corner_line, lr_corner_line
    )

    for record in tqdm(records, disable=disable_progress):
        for pixel in range(integrated_data.shape[1] - 1):
            if np.isnan(integrated_data[record, pixel]):
                continue

            # Get surface intercept point and incidence angle for pixel boresight
            inters_center, angle_center = projector.proj_point(
                fov_centers[pixel, :], et_times[record]
            )
            if np.any(np.isnan(inters_center)):
                continue

            # Get surface intercept for pixel corners
            inters_corners = np.array(
                [
                    projector.proj_point(fov_corners[pixel, iii, :], et_times[record])[
                        0
                    ]
                    for iii in range(fov_corners.shape[1])
                ]
            )
            if np.any(np.isnan(inters_corners)):
                continue

            # Create projected pixel polygon in polar view and check whether it intersects the pole
            inters_lon = inters_corners[:, 0] * np.pi / 180
            inters_lat = 90 - np.abs(inters_corners[:, 1])
            is_polar = False
            if np.any(inters_lat < 1):
                is_polar = True
                polar_corners = [
                    [
                        inters_lat[iii] * np.cos(inters_lon[iii]),
                        inters_lat[iii] * np.sin(inters_lon[iii]),
                    ]
                    for iii in range(len(inters_lon))
                ]
                pixel_polar_view = Polygon(np.array(polar_corners))
                is_polar = pixel_polar_view.contains(Point(0, 0))

            # Check for non-polar bins crossing the 360-0 longitude boundary
            # Rotate them by lon=180deg, perform calculations and rotate back
            is_boundary_pixel = (
                np.max(inters_corners[:, 0]) - np.min(inters_corners[:, 0]) > 270
            ) & ~is_polar
            if is_boundary_pixel:
                inters_corners[:, 0] = (inters_corners[:, 0] + 180) % 360

            # Create projected pixel polygon in lon-lat view from corners
            pixel_lon_lat_view = Polygon(inters_corners)
            # Find bins which might intersect
            if is_polar:
                lon_min = 0
                lon_max = 360
                if inters_center[1] > 0:
                    lat_min = np.min(inters_corners[:, 1])
                    lat_max = 90
                else:
                    lat_min = -90
                    lat_max = np.max(inters_corners[:, 1])
            else:
                lon_min, lat_min, lon_max, lat_max = pixel_lon_lat_view.bounds

            arg_lon_bins = np.where(
                (projector.lon_bins[1:] >= lon_min)
                & (projector.lon_bins[:-1] <= lon_max)
            )[0]
            arg_lat_bins = np.where(
                (projector.lat_bins[1:] >= lat_min)
                & (projector.lat_bins[:-1] <= lat_max)
            )[0]

            # Iterate through all lon-lat bin candidates, check exact shapes
            for arg_lon, arg_lat in product(arg_lon_bins, arg_lat_bins):
                # Continue if bin is part of a combined bin and not the master
                if (
                    np.isfinite(projector.bin_map[arg_lon, arg_lat])
                    and not projector.is_master_bin[arg_lon, arg_lat]
                ):
                    continue
                # Get bin corners
                min_lon, max_lon = projector.lon_bins[arg_lon : arg_lon + 2]
                min_lat, max_lat = projector.lat_bins[arg_lat : arg_lat + 2]
                # For pole pixels, perform intersection checking in flat polar view
                if is_polar:
                    bin_corners = np.array(
                        [
                            [min_lon, min_lat],
                            [min_lon, max_lat],
                            [max_lon, max_lat],
                            [max_lon, min_lat],
                        ]
                    )
                    tmp_theta = bin_corners[:, 0] * np.pi / 180
                    tmp_r = 90 - np.abs(bin_corners[:, 1])
                    bin_polar_view = Polygon(
                        np.array(
                            [
                                [
                                    tmp_r[iii] * np.cos(tmp_theta[iii]),
                                    tmp_r[iii] * np.sin(tmp_theta[iii]),
                                ]
                                for iii in range(len(tmp_r))
                            ]
                        )
                    )
                    valid = bin_polar_view.intersects(pixel_polar_view)
                # For other pixels, check intersection in lon-lat view
                else:
                    bin_lon_lat_view = box(
                        min_lon,
                        min_lat,
                        max_lon,
                        max_lat,
                    )
                    valid = bin_lon_lat_view.intersects(pixel_lon_lat_view)
                if not valid:
                    continue

                # Add pixel to projection
                if is_boundary_pixel:
                    arg_lon = int(
                        (arg_lon + (len(projector.lon_bins) - 1) / 2)
                        % (len(projector.lon_bins) - 1)
                    )
                if projector.is_master_bin[arg_lon, arg_lat]:
                    fill_lons = np.where(
                        projector.bin_map[:, arg_lat]
                        == projector.bin_map[arg_lon, arg_lat]
                    )[0]
                else:
                    fill_lons = arg_lon
                proj_sum[fill_lons, arg_lat] += integrated_data[record, pixel]
                proj_num[fill_lons, arg_lat] += 1
                if (
                    np.isnan(proj_min_angle[fill_lons, arg_lat]).any()
                    or (angle_center < proj_min_angle[fill_lons, arg_lat]).any()
                ):
                    proj_min_angle[fill_lons, arg_lat] = angle_center

    if not disable_progress:
        tstop = time.time()
        logger.info("Projection successful, took {:0.1f} seconds".format(tstop - tstart))

    projector.remove_metakernels()

    return proj_sum, proj_num, proj_min_angle
