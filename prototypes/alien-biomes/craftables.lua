-- Data-updates-stage craftable integration for Alien Biomes trees and rocks.

if not mods["alien-biomes-graphics"] then return end

local constants = require("prototypes.alien-biomes.constants")
local utils = require("utils")

local function make_once(name, prototype_type, subgroup, order)
    if data.raw[prototype_type]
        and data.raw[prototype_type][name]
        and not (data.raw.item and data.raw.item[name])
    then
        utils.make_it_craftable(name, prototype_type, CRAFTDECO2.ITEM_GROUP, subgroup, order)
    end
end

local function unlock_once(recipe)
    local tech = data.raw.technology and data.raw.technology["craft-deco-2-landscaping"]
    if not (tech and tech.effects and data.raw.recipe and data.raw.recipe[recipe]) then return end

    for _, effect in pairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == recipe then return end
    end

    table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe })
end

-- Arborium mods provide their own tree crafting flow. Keep craft-deco-2's
-- Alien Biomes tree prototypes available, but do not add duplicate recipes.
if not (mods["Arborium"] or mods["Arborium_Renewed"]) then
    for _, name in pairs(constants.trees) do
        make_once(name, "tree", "craftable-alien-biomes-trees", "a[alien-biomes-tree-" .. name .. "]")
        unlock_once(name)
    end
end

-- Rocks are craft-deco-2's existing tinted Alien Biomes rock variants.
-- The later data.raw simple-entity rock copies were intentionally removed to
-- avoid duplicate rock entities and recipes.
for _, base in pairs(constants.rock_bases) do
    for _, color in pairs(constants.rock_colors) do
        local name = base .. "-" .. color
        make_once(name, "simple-entity", "craftable-alien-biomes-rocks", "a[alien-biomes-rock-" .. name .. "]")
        unlock_once(name)
    end
end
