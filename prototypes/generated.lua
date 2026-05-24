local tree_def_chunks = {
    require("prototypes.generated.tree-defs-1"),
    require("prototypes.generated.tree-defs-2"),
    require("prototypes.generated.tree-defs-3"),
    require("prototypes.generated.tree-defs-4"),
    require("prototypes.generated.tree-defs-5"),
    require("prototypes.generated.tree-defs-6"),
    require("prototypes.generated.tree-defs-7"),
    require("prototypes.generated.tree-defs-8"),
}

local tree_defs = {}
for _, chunk in pairs(tree_def_chunks) do
    for _, def in pairs(chunk) do
        table.insert(tree_defs, def)
    end
end

local rock_defs = require("prototypes.generated.rock-defs")

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

local rock_colors = {
    "tan", "white", "grey", "black", "purple", "red",
    "violet", "dustyrose", "cream", "brown", "beige", "aubergine",
}

local function first_picture(entity)
    if not entity or not entity.pictures then return nil end
    if entity.pictures.filename then return entity.pictures end
    return entity.pictures[1]
end

local function set_rock_icon(entity)
    if not entity then return end

    local kind =
        entity.name:match("^rock%-huge%-") and "huge"
        or entity.name:match("^rock%-big%-") and "big"

    if not kind then return end

    local picture = first_picture(entity)
    if not picture then return end

    entity.icon = nil
    entity.icon_size = nil
    entity.icon_mipmaps = nil
    entity.icons = { {
        icon = kind == "big"
            and "__craft-deco-2__/graphics/icons/big-rock-01.png"
            or "__craft-deco-2__/graphics/icons/huge-rock-05.png",
        icon_size = 64,
        tint = picture.tint,
    } }
end

for _, color in pairs(rock_colors) do
    set_rock_icon(data.raw["simple-entity"]["rock-huge-" .. color])
    set_rock_icon(data.raw["simple-entity"]["rock-big-" .. color])
end
