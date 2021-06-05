import logging
from pathlib import Path

from uvisaurorae.executions import execute_projection_command, get_full_execution_list
from uvisaurorae.projection import UVISAuroralProjector

if __name__ == "__main__":

    base_dir = Path("C:/users/lxbad/Desktop/uvis_projection_test")

    # Logging to file
    # logging.basicConfig(filename=str(base_dir / "example.log"), level=logging.INFO)

    # Logging to console
    logging.basicConfig(level=logging.INFO)

    uvis_dir = base_dir / "uvis_data"
    spice_dir = base_dir / "spice_data"
    projection_dir = base_dir / "projections"
    uvis_projector = UVISAuroralProjector(720, 720, spice_dir)

    # Base components to be used for all projections
    cmd_base = dict(
        uvis_dir=uvis_dir,
        spice_dir=spice_dir,
        uvis_projector=uvis_projector,
        projection_dir=projection_dir,
        creator="LXBADER",
    )

    # Get somewhat clean list for projecting all UVIS auroral images from the Cassini mission
    full_exec = get_full_execution_list()

    # Perform first projection from the list
    execute_projection_command(
        dict(
            **cmd_base,
            **full_exec[0],
            # n_workers=1,
        )
    )

    # Self-defined projection combining some files
    execute_projection_command(
        dict(
            **cmd_base,
            uvis_file_names=[
                "FUV2017_102_08_21",
                "FUV2017_102_09_14",
                "FUV2017_102_10_23",
            ],
            release_number=59,
            sensitivity=5,
            projection_mode="combine",
            clean=True,
        )
    )

    # Self-defined projection splitting a file into several images
    execute_projection_command(
        dict(
            **cmd_base,
            uvis_file_names=["FUV2017_167_20_15"],
            release_number=59,
            sensitivity=1,
            projection_mode="split",
        )
    )

    # Self-defined projection splitting a file into several images but only actually projecting the 21st and 22nd image
    # of the collection
    execute_projection_command(
        dict(
            **cmd_base,
            uvis_file_names=["FUV2014_150_16_57", "FUV2014_150_20_22"],
            release_number=47,
            sensitivity=1,
            projection_mode="split",
            only_idx=[20, 21],
        )
    )
