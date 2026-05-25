--- Runtime event registration for craft-deco-2 variant cycling.

local variant_cycler = require("scripts.variant-cycler")

script.on_event("craft-deco-2-cycle-variant", variant_cycler.on_cycle_color_variant)
script.on_event("craft-deco-2-cycle-shape-variant", variant_cycler.on_cycle_shape_variant)
