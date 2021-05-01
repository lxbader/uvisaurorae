import datetime as dt

import importlib_resources
import numpy as np
import spiceypy as spice
from numpy.testing import assert_almost_equal

from uvisaurorae.projection import (
    UVISAuroralProjector,
    project_data,
    project_data_parallel,
)

test_data_dir = importlib_resources.files("uvisaurorae").joinpath(
    "tests/data/projection"
)

spice_dir = test_data_dir / "spice"

uvis_proj = UVISAuroralProjector(90, 90, spice_dir)


def test_projection_setup():
    # Get UVIS_FUV FOV and check outputs (NAIF ID of UVIS_FUV -82840, max number of vectors returned)
    shape, frame, boresight, n_boundvec, boundvec = spice.getfov(-82840, 100)
    assert shape == "RECTANGLE"
    assert frame == "CASSINI_UVIS_FUV"
    assert np.all(boresight == np.array([0, 0, 1]))
    assert n_boundvec == 4
    assert len(boundvec) == 4

    # Check whether SATURN_AURORAL_LAYER has been imported correctly
    assert np.all(
        spice.bodvrd("SATURN", "RADII", 3)[1] == np.array([61487, 61487, 55464])
    )


def test_projection():
    dt_fmt = "%Y-%jT%H:%M:%S"
    start_time = spice.datetime2et(dt.datetime.strptime("2016-278T09:22:40", dt_fmt))
    end_time = spice.datetime2et(dt.datetime.strptime("2016-278T11:56:08", dt_fmt))
    integrated_data = np.arange(50 * 64).reshape((50, 64))
    et_times = np.linspace(start_time, end_time, 50)

    proj_sum, proj_num, proj_min_angle = project_data(
        uvis_proj, integrated_data, et_times, 1, 0, 63
    )

    expected_num = np.load(test_data_dir / "proj_num_expected.npy")
    expected_sum = np.load(test_data_dir / "proj_sum_expected.npy")
    expected_min_angle = np.load(test_data_dir / "proj_min_angle_expected.npy")

    assert_almost_equal(proj_num, expected_num)
    assert_almost_equal(proj_sum, expected_sum)
    assert_almost_equal(proj_min_angle, expected_min_angle)


def test_projection_parallel():
    dt_fmt = "%Y-%jT%H:%M:%S"
    start_time = spice.datetime2et(dt.datetime.strptime("2016-278T09:22:40", dt_fmt))
    end_time = spice.datetime2et(dt.datetime.strptime("2016-278T11:56:08", dt_fmt))
    integrated_data = np.arange(50 * 64).reshape((50, 64))
    et_times = np.linspace(start_time, end_time, 50)

    proj_sum, proj_num, proj_min_angle = project_data_parallel(
        uvis_proj, integrated_data, et_times, 1, 0, 63
    )

    expected_num = np.load(test_data_dir / "proj_num_expected.npy")
    expected_sum = np.load(test_data_dir / "proj_sum_expected.npy")
    expected_min_angle = np.load(test_data_dir / "proj_min_angle_expected.npy")

    assert_almost_equal(proj_num, expected_num)
    assert_almost_equal(proj_sum, expected_sum)
    assert_almost_equal(proj_min_angle, expected_min_angle)
