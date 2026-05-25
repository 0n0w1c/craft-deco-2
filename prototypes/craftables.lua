--- Creates craftable items and recipes for configured vanilla and Space Age entities.

local utils = require("utils")
local base_rocks = CRAFTDECO2.CONFIG.BASE_ROCKS
local craftable_trees = CRAFTDECO2.CONFIG.CRAFTABLE_TREES
local craftable_alive_trees = CRAFTDECO2.CONFIG.CRAFTABLE_ALIVE_TREES


for planet, rocks in pairs(base_rocks) do
    for _, name in pairs(rocks) do
        utils.make_it_craftable(name, "simple-entity", CRAFTDECO2.ITEM_GROUP, "craftable-grass", "c[base-" .. name .. "]")
    end
end

for planet, trees in pairs(craftable_trees) do
    for _, name in pairs(trees) do
        utils.make_it_craftable(name, "tree", CRAFTDECO2.ITEM_GROUP, "craftable-trees", "f[base-" .. name .. "]")
    end
end

for planet, trees in pairs(craftable_alive_trees) do
    for _, name in pairs(trees) do
        utils.make_it_craftable(name, "tree", CRAFTDECO2.ITEM_GROUP, "craftable-alive-trees", "e[base-" .. name .. "]")
        if mods["space-age"] then
            data.raw["tree"][name].surface_conditions = {
                {
                    property = "pressure",
                    min = 500,
                    max = 2500
                }
            }
        end
    end
end

if mods['space-age'] then
    utils.make_it_craftable("fulgoran-ruin-attractor", "lightning-attractor", CRAFTDECO2.ITEM_GROUP,
        "craftable-attractors",
        "d[base-fulgoran-ruin-attractor]")
end
