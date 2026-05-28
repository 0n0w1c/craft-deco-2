---@type VariantCycler
local variant_cycler = require("scripts.variant-cycler")

script.on_event("craft-deco-2-cycle-variant", variant_cycler.on_cycle_color_variant)
script.on_event("craft-deco-2-cycle-shape-variant", variant_cycler.on_cycle_shape_variant)

script.on_event("craft-deco-2-open-variant-picker", variant_cycler.on_open_variant_picker)
script.on_event("craft-deco-2-open-variant-picker-click", variant_cycler.on_open_variant_picker)

script.on_event(defines.events.on_gui_click, variant_cycler.on_gui_click)
script.on_event(defines.events.on_gui_closed, variant_cycler.on_gui_closed)
