import importlib_resources
import numpy as np
from numpy.testing import assert_almost_equal

from uvisaurorae.inout import load_integrated_data

test_data_dir = importlib_resources.files("uvisaurorae").joinpath("tests/data/inout")


def test_data_input_compressed():
    file_name = "FUV2016_278_09_22"
    expected_file = test_data_dir / (file_name + "_expected.npy")

    metadata, et_times, int_data = load_integrated_data(
        test_data_dir / (file_name + ".DAT.bz2"),
        test_data_dir / (file_name + ".LBL"),
        "GUSTIN_2016",
    )

    assert int_data.shape == (1151, 64)

    expected = np.load(expected_file)
    assert_almost_equal(int_data, expected)
