local utils = require("utils")

utils.create_item_subgroup("craftable-simple-trees", "environment", "a")
utils.create_item_subgroup("craftable-alive-trees", "environment", "b")
utils.create_item_subgroup("craftable-trees", "environment", "c")
utils.create_item_subgroup("craftable-grass", "environment", "d")
utils.create_item_subgroup("craftable-attractors", "environment", "e")
utils.create_item_subgroup("craftable-cliffs", "environment", "h")
utils.create_item_subgroup("craftable-concrete", "environment", "i")

if mods["alien-biomes-graphics"] then
    utils.create_item_subgroup("craftable-alien-biomes-trees", "environment", "f")
    utils.create_item_subgroup("craftable-alien-biomes-rocks", "environment", "g")
end
