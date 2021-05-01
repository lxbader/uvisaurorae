import importlib_resources
import spiceypy as spice

# Load leap second kernel if not loaded already
lsk = importlib_resources.files("uvis_auroral_projections.resources").joinpath(
    "naif0012.tls"
)
try:
    spice.kinfo(str(lsk))
except spice.stypes.SpiceyError:
    spice.furnsh(str(lsk))
