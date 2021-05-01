import bz2
import datetime as dt
import re
import uuid

import importlib_resources
import numpy as np
import requests


class DataRetrievalError(Exception):
    def __init__(self, msg=None):
        super(DataRetrievalError, self).__init__(msg)


def list_all_spice_kernels():
    kernel_list = importlib_resources.files(
        "uvis_auroral_projections.resources"
    ).joinpath("spice_cassini_standard_kernels.txt")
    all_kernels = np.genfromtxt(kernel_list, dtype=str)

    static_kernels = []
    timed_kernels = dict(
        kernel=[],
        start=[],
        stop=[],
    )
    for kernel in all_kernels:
        try:
            date_str = re.findall(r"\d{5}_\d{5}", kernel)[0]
        except IndexError:
            static_kernels.append(kernel)
        else:
            start, stop = date_str.split("_")
            timed_kernels["kernel"].append(kernel)
            timed_kernels["start"].append(dt.datetime.strptime(start, "%y%j"))
            timed_kernels["stop"].append(
                dt.datetime.strptime(stop, "%y%j") + dt.timedelta(days=1)
            )
    return static_kernels, timed_kernels


def list_required_spice_kernels(uvis_file_name):
    try:
        date_str = re.findall(r"\d{4}_\d{3}", uvis_file_name)[0]
    except IndexError:
        raise DataRetrievalError(
            "UVIS filename does not contain date in format YYYY_DOY, required SPICE kernels could not be determined."
        )
    date = dt.datetime.strptime(date_str, "%Y_%j")
    static_kernels, timed_kernels = list_all_spice_kernels()
    intersecting_idx = np.where(
        (np.array(timed_kernels["stop"]) > date - dt.timedelta(days=1))
        & (np.array(timed_kernels["start"]) < date + dt.timedelta(days=1))
    )[0]
    required_kernels = np.append(
        static_kernels, np.array(timed_kernels["kernel"])[intersecting_idx]
    )
    return required_kernels


def download_spice_kernels(kernels, save_dir, overwrite=False):
    naif_root = "https://naif.jpl.nasa.gov/pub/naif/pds/data/co-s_j_e_v-spice-6-v1.0/cosp_1000/data"
    for kernel in kernels:
        save_file = save_dir / kernel
        if save_file.is_file() and not overwrite:
            continue
        if not save_file.parent.exists():
            save_file.parent.mkdir(parents=True)

        data = requests.get(naif_root + "/" + kernel)
        if not data.status_code == 200:
            raise DataRetrievalError(f"Download of kernel {kernel} failed.")

        with open(save_file, "wb") as f:
            f.write(data.content)
    return


def make_metakernel(kernel_dir, kernels=None):
    metakernel_file = kernel_dir / (uuid.uuid4().hex + ".mk")
    if kernels:
        kernels = [kernel_dir / k for k in kernels]
    else:
        kernels = list(kernel_dir.glob("*/*"))
    with open(metakernel_file, "w") as f:
        f.write("KPL/MK\n")
        f.write("\\begindata\n")
        f.write("KERNELS_TO_LOAD=(\n")
        for k in kernels:
            if ".mk" in str(k):
                continue
            f.write("'" + str(k) + "',\n")
        f.write(")\n")
        f.write("\\begintext\n")
    return metakernel_file


def download_uvis_data(
    uvis_file_name, release_number, save_dir, overwrite=False, compress=True
):
    pds_uvis_root = "https://pds-rings.seti.org/holdings/volumes/COUVIS_0xxx/"
    try:
        date_str = re.findall(r"\d{4}_\d{3}", uvis_file_name)[0]
    except IndexError:
        raise DataRetrievalError(
            "UVIS filename does not contain date in format YYYY_DOY, cannot identify remote file location"
        )
    full_link = pds_uvis_root + "COUVIS_{:04d}/DATA/D{}".format(
        release_number, date_str
    )

    for suffix in [".LBL", ".DAT"]:
        this_file = uvis_file_name + suffix
        save_file = save_dir / this_file
        if compress and suffix == ".DAT":
            save_file = save_file.parent / (save_file.name + ".bz2")

        if save_file.is_file() and not overwrite:
            continue
        if not save_file.parent.exists():
            save_file.parent.mkdir(parents=True)

        data = requests.get(full_link + "/" + this_file)
        if not data.status_code == 200:
            raise DataRetrievalError(f"Download of UVIS file {this_file} failed")
        if compress and suffix == ".DAT":
            with bz2.open(save_file, "wb") as f:
                f.write(data.content)
        else:
            with open(save_file, "wb") as f:
                f.write(data.content)
    return save_file


def download_data(
    uvis_file_name, release_number, uvis_dir, spice_dir, overwrite=False, compress=True
):
    # Get SPICE kernels
    required_kernels = list_required_spice_kernels(uvis_file_name)
    download_spice_kernels(required_kernels, spice_dir, overwrite=overwrite)

    # Get UVIS data
    uvis_file = download_uvis_data(
        uvis_file_name, release_number, uvis_dir, overwrite=overwrite, compress=compress
    )

    return uvis_file
