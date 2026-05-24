local base_trees = CRAFTDECO2.CONFIG.BASE_TREES
local craftable_trees = CRAFTDECO2.CONFIG.CRAFTABLE_TREES
local craftable_alive_trees = CRAFTDECO2.CONFIG.CRAFTABLE_ALIVE_TREES
local base_rocks = CRAFTDECO2.CONFIG.BASE_ROCKS

local utils = require("utils")

local landscaping_effects = {}

local function add_to_landscaping_effects(array, type)
    for _, item in ipairs(array) do
        if data.raw[type][item] then
            table.insert(landscaping_effects, {
                type = "unlock-recipe",
                recipe = item
            })
        end
    end
end

add_to_landscaping_effects(craftable_trees["nauvis"], "tree")
add_to_landscaping_effects(base_trees, "tree")
add_to_landscaping_effects(base_rocks["nauvis"], "simple-entity")

data:extend({
    {
        type = "technology",
        name = "craft-deco-2-landscaping",
        icons = {
            {
                icon = data.raw["item-group"]["environment"].icon,
                icon_size = 128
            },
            {
                icon = "__base__/graphics/icons/nauvis.png",
                icon_size = 64,
                scale = 0.8,
                shift = {
                    35,
                    50
                }
            }
        },
        prerequisites = {
            "landfill"
        },
        icon_mipmaps = 1,
        unit = {
            count = 50,
            ingredients = {
                {
                    "automation-science-pack",
                    1
                },
                {
                    "logistic-science-pack",
                    1
                }
            },
            time = 10
        },
        effects = landscaping_effects,
        order = "a"
    }

})

if not mods["space-age"] then
    return
end

local function create_planet_effects(array, type)
    local effects = {}
    for _, item in ipairs(array) do
        if data.raw[type][item] then
            table.insert(effects, {
                type = "unlock-recipe",
                recipe = item
            })
        end
    end
    return effects
end

local function create_planet_landscaping_technology_icon(planet, icon1, icon2)
    local icons = {
        {
            icon = '__space-age__/graphics/technology/' .. planet .. '.png',
            icon_size = 256,
            scale = 0.6
        },
        {
            icon = icon1,
            icon_size = 64,
            scale = 1,
            shift = {
                63,
                63
            }
        }

    }
    if icon2 then
        table.insert(icons, {
            icon = icon2,
            icon_size = 64,
            scale = 1,
            shift = {
                -63,
                63
            }
        })
    end
    return icons
end

local function create_planet_landscaping_technology(planet, research_trigger, icon1, icon2)
    local effects = base_rocks[planet] and create_planet_effects(base_rocks[planet], "simple-entity") or {}
    local alive_tree_effects = craftable_alive_trees[planet] and
        create_planet_effects(craftable_alive_trees[planet], "tree") or {}
    local tree_effects = craftable_trees[planet] and create_planet_effects(craftable_trees[planet], "tree") or {}

    for _, effect in ipairs(alive_tree_effects) do
        table.insert(effects, effect)
    end

    for _, effect in ipairs(tree_effects) do
        table.insert(effects, effect)
    end

    data:extend({
        {
            type = "technology",
            name = "craft-deco-2-" .. planet .. "-landscaping",

            icons = create_planet_landscaping_technology_icon(planet, icon1, icon2),

            icon_size = 256,
            prerequisites = {
                "craft-deco-2-landscaping"
            },
            icon_mipmaps = 1,
            research_trigger = research_trigger,

            effects = effects,
            order = "a"
        }
    })
end

create_planet_landscaping_technology("vulcanus", {
    type = "mine-entity",
    entity = "big-volcanic-rock"
}, data.raw["tree"]["ashland-lichen-tree-flaming"].icon, data.raw["simple-entity"]["vulcanus-chimney"].icon)

create_planet_landscaping_technology("fulgora", {
    type = "mine-entity",
    entity = "big-fulgora-rock"
}, data.raw["lightning-attractor"]["fulgoran-ruin-attractor"].icon, data.raw["simple-entity"]["big-fulgora-rock"].icon)

create_planet_landscaping_technology("gleba", {
    type = "mine-entity",
    entity = "iron-stromatolite"
}, data.raw["tree"]["sunnycomb"].icon, data.raw["simple-entity"]["iron-stromatolite"].icon)

create_planet_landscaping_technology("aquilo", {
    type = "mine-entity",
    entity = "lithium-iceberg-big"
}, data.raw["simple-entity"]["lithium-iceberg-big"].icon)
