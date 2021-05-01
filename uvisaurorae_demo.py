import logging
from pathlib import Path

from uvisaurorae.executions import execute_projection_command
from uvisaurorae.projection import UVISAuroralProjector

if __name__ == "__main__":

    logging.basicConfig(filename=str(Path.cwd() / "example.log"), level=logging.INFO)

    uvis_dir = Path("D:/uvis_projection_test/uvis_data")
    spice_dir = Path("D:/uvis_projection_test/spice_data")
    projection_dir = Path("D:/uvis_projection_test/projections")
    uvis_projector = UVISAuroralProjector(720, 720, spice_dir)

    cmd_base = dict(
        uvis_dir=uvis_dir,
        spice_dir=spice_dir,
        uvis_projector=uvis_projector,
        projection_dir=projection_dir,
        creator="LXBADER",
    )

    # execute_projection_command(
    #     dict(
    #         **cmd_base,
    #         uvis_file_names=[
    #             "FUV2017_102_08_21",
    #             "FUV2017_102_09_14",
    #             "FUV2017_102_10_23",
    #         ],
    #         release_number=59,
    #         sensitivity=5,
    #         projection_mode="combine",
    #     )
    # )
    #
    # execute_projection_command(
    #     dict(
    #         **cmd_base,
    #         uvis_file_names=["FUV2017_213_00_39", "FUV2017_213_01_12"],
    #         release_number=60,
    #         sensitivity=5,
    #         projection_mode="combine",
    #     )
    # )
    #
    # execute_projection_command(
    #     dict(
    #         **cmd_base,
    #         uvis_file_names=["FUV2017_167_20_15"],
    #         release_number=59,
    #         sensitivity=1,
    #         projection_mode="split",
    #     )
    # )
    #
    # execute_projection_command(
    #     dict(
    #         **cmd_base,
    #         uvis_file_names=["FUV2017_220_01_29"],
    #         release_number=60,
    #         sensitivity=1,
    #         projection_mode="split",
    #     )
    # )

    execute_projection_command(
        dict(
            **cmd_base,
            uvis_file_names=["FUV2014_150_16_57", "FUV2014_150_20_22"],
            release_number=47,
            sensitivity=1,
            projection_mode="split",
            only_idx=[21],  # , 22, 23],
        )
    )

    # execute_projection_command(
    #     dict(
    #         **cmd_base,
    #         uvis_file_names=["FUV2016_278_09_22"],
    #         release_number=57,
    #         sensitivity=1,
    #         projection_mode="combine",
    #         clean=True,
    #     )
    # )
