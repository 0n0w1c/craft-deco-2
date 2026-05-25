if not mods["alien-biomes-graphics"] then return end

local tree_def_chunks = {
    require("prototypes.alien-biomes.generated.tree-defs-1"),
    require("prototypes.alien-biomes.generated.tree-defs-2"),
    require("prototypes.alien-biomes.generated.tree-defs-3"),
    require("prototypes.alien-biomes.generated.tree-defs-4"),
    require("prototypes.alien-biomes.generated.tree-defs-5"),
    require("prototypes.alien-biomes.generated.tree-defs-6"),
    require("prototypes.alien-biomes.generated.tree-defs-7"),
    require("prototypes.alien-biomes.generated.tree-defs-8"),
}

local tree_defs = {}
for _, chunk in pairs(tree_def_chunks) do
    for _, def in pairs(chunk) do
        table.insert(tree_defs, def)
    end
end

local rock_defs = require("prototypes.alien-biomes.generated.rock-defs")

local tree_common = {
    type = "tree",
    flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
    selection_priority = 0,
    minable = { mining_particle = "wooden-particle", mining_time = 0.5, result = "wood", count = 4 },
    emissions_per_second = { pollution = -0.0015 },
    max_health = 20,
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.9, -2.2 }, { 0.9, 0.6 } },
    subgroup = "trees",
    impact_category = "tree",
    darkness_of_burnt_tree = 0.5,
}

local leaf_generation = {
    type = "create-particle",
    particle_name = "leaf-particle",
    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    initial_height = 2,
    initial_height_deviation = 1,
    speed_from_center = 0.01,
}

local branch_generation = {
    type = "create-particle",
    particle_name = "branch-particle",
    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    initial_height = 2,
    initial_height_deviation = 2,
    speed_from_center = 0.01,
    frame_speed = 0.1,
    repeat_count = 15,
}

local function sprite(def, flags)
    local s = table.deepcopy(def)
    if flags then s.flags = flags end
    return s
end

local function make_variation(def)
    local reflection = table.deepcopy(def.water_reflection)
    reflection.priority = "extra-high"
    local variation = {
        trunk = sprite(def.trunk, { "mipmap" }),
        leaves = sprite(def.leaves, { "mipmap" }),
        leaf_generation = table.deepcopy(leaf_generation),
        branch_generation = table.deepcopy(branch_generation),
        normal = def.normal and sprite(def.normal) or nil,
        water_reflection = {
            pictures = reflection,
            rotate = false,
            orientation_to_variation = false,
        },
        shadow = sprite(def.shadow, { "mipmap", "shadow" }),
    }
    variation.shadow.draw_as_shadow = true
    return variation
end

local function make_tree(def)
    local tree = table.deepcopy(tree_common)
    tree.name = def.name
    tree.icons = def.icons
    tree.colors = def.colors
    tree.order = "a[tree]-b[alien-biomes]-a[" .. def.name .. "]"
    tree.localised_name = { "entity-name." .. def.locale_key }
    tree.variations = {}
    for _, variation in pairs(def.variations) do
        table.insert(tree.variations, make_variation(variation))
    end
    return tree
end

local function extend_once(prototype)
    if not (data.raw[prototype.type] and data.raw[prototype.type][prototype.name]) then
        data:extend({ prototype })
    end
end

for _, def in pairs(tree_defs) do
    extend_once(make_tree(def))
end

for _, def in pairs(rock_defs) do
    local rock = table.deepcopy(def)
    rock.type = "simple-entity"
    rock.subgroup = "grass"
    rock.localised_name = { "entity-name." .. rock.locale_key }
    rock.locale_key = nil
    extend_once(rock)
end

local generated_sets = {
    require("prototypes.alien-biomes.generated.corpses"),
    require("prototypes.alien-biomes.generated.trees"),
}

local function extend_once(prototype)
    if not (data.raw[prototype.type] and data.raw[prototype.type][prototype.name]) then
        data:extend({ prototype })
    end
end

for _, prototypes in pairs(generated_sets) do
    for _, prototype in pairs(prototypes) do
        extend_once(prototype)
    end
end

local constants = require("prototypes.alien-biomes.constants")

for tree_name, remnant in pairs(constants.tree_remnants) do
    local tree = data.raw.tree and data.raw.tree[tree_name]
    if tree and data.raw.corpse and data.raw.corpse[remnant] then
        tree.corpse = remnant
        tree.remains_when_mined = remnant
    end
end
