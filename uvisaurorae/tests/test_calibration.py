import datetime as dt

import importlib_resources
import numpy as np
import pytest
import spiceypy as spice
from numpy.testing import assert_array_almost_equal
from scipy.io import readsav

from uvisaurorae.calibration import UVISCalibrator

test_data_dir = importlib_resources.files("uvisaurorae").joinpath(
    "tests/data/calibration"
)

pytime = dt.datetime.strptime("2008-224T04:30:06", "%Y-%jT%H:%M:%S")
ettime = spice.datetime2et(pytime)
slit_width = 1
channel = "FUV"
window_def = [0, 0, 1023, 63]

uviscal = UVISCalibrator(channel)


@pytest.mark.parametrize(
    "bin_def,expected_fname",
    [
        ([1, 1], "test2008_224T04_30_bin1x1.sav"),
        ([1, 2], "test2008_224T04_30_bin1x2.sav"),
        ([4, 1], "test2008_224T04_30_bin4x1.sav"),
    ],
)
def test_calibration_output(bin_def, expected_fname):
    u_wave, u_cal, u_err = uviscal.get_interpolated_calibration(
        ettime, slit_width, window_def, bin_def
    )

    testfile = test_data_dir / expected_fname
    expected = readsav(testfile)

    assert_array_almost_equal(u_wave, expected["wave"], decimal=3)

    exp_cal = np.copy(expected["cal"])
    inv_entries = ~np.isfinite(exp_cal)
    exp_cal[inv_entries] = u_cal[inv_entries]
    assert_array_almost_equal(u_cal, exp_cal, decimal=2)
