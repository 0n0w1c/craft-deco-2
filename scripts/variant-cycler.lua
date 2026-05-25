--- Runtime support for cycling placed craft-deco-2 decorative variants.
--- SHIFT + V cycles leaf/color variants; SHIFT + B cycles trunk/shape/sprite variants.
---@class VariantCycler

local variant_cycler = {}

local variation_counts = require("scripts.variant-counts")
local tree_color_counts = require("scripts.tree-color-counts")
local prototype_groups = require("scripts.prototype-groups")

local tracked_names

local EXTRA_TRACKED_NAMES = {
    "big-rock",
    "big-sand-rock",
    "huge-rock",
    "big-volcanic-rock",
    "huge-volcanic-rock",
    "vulcanus-chimney",
    "vulcanus-chimney-cold",
    "vulcanus-chimney-faded",
    "vulcanus-chimney-short",
    "vulcanus-chimney-truncated",
    "big-fulgora-rock",
    "fulgoran-ruin-big",
    "fulgoran-ruin-colossal",
    "fulgoran-ruin-huge",
    "fulgoran-ruin-medium",
    "fulgoran-ruin-small",
    "fulgoran-ruin-stonehenge",
    "fulgoran-ruin-vault",
    "fulgurite",
    "fulgurite-small",
    "copper-stromatolite",
    "iron-stromatolite",
    "lithium-iceberg-big",
    "lithium-iceberg-huge",
    "dead-dry-hairy-tree",
    "dead-grey-trunk",
    "dead-tree-desert",
    "dry-hairy-tree",
    "dry-tree",
    "tree-06",
    "tree-06-brown",
    "ashland-lichen-tree",
    "ashland-lichen-tree-flaming",
    "sunnycomb",
    "slipstack",
    "cuttlepop",
    "boompuff",
    "stingfrond",
    "funneltrunk",
    "teflilly",
    "hairyclubnub",
    "lickmaw",
    "water-cane",
}

--- Adds a prototype name to a lookup set.
---@param names table<string, boolean>
---@param name string|nil
local function add_name(names, name)
    if name then
        names[name] = true
    end
end

--- Adds a list of prototype names to a lookup set.
---@param names table<string, boolean>
---@param list string[]|nil
local function add_names(names, list)
    for _, name in pairs(list or {}) do
        add_name(names, name)
    end
end

local alien_biomes_constants = require("prototypes.alien-biomes.constants")

--- Adds generated Alien Biomes tree and rock prototype names to a lookup set.
---@param names table<string, boolean>
local function add_alien_biomes_names(names)
    add_names(names, alien_biomes_constants.trees)

    for _, base in pairs(alien_biomes_constants.rock_bases or {}) do
        for _, color in pairs(alien_biomes_constants.rock_colors or {}) do
            add_name(names, base .. "-" .. color)
        end
    end
end

--- Builds the set of entity names supported by variant cycling.
---@return table<string, boolean> names
local function build_tracked_names()
    local names = {}

    for name, _ in pairs(prototype_groups) do
        add_name(names, name)
    end

    for name, _ in pairs(variation_counts) do
        add_name(names, name)
    end

    for name, _ in pairs(tree_color_counts) do
        add_name(names, name)
    end

    add_names(names, EXTRA_TRACKED_NAMES)
    add_alien_biomes_names(names)

    return names
end

--- Returns the currently selected entity when it is supported by variant cycling.
---@param player LuaPlayer|nil
---@return LuaEntity|nil entity
local function selected_tracked_entity(player)
    if not player then
        return nil
    end

    local entity = player.selected
    if not (entity and entity.valid) then
        return nil
    end

    tracked_names = tracked_names or build_tracked_names()
    if tracked_names[entity.name] then
        return entity
    end

    return nil
end

--- Reads a numeric runtime field from an object.
---@param object table|nil
---@param key string
---@return number|nil value
local function get_number(object, key)
    if not object then
        return nil
    end

    local value = object[key]
    if type(value) == "number" then
        return value
    end

    return nil
end

--- Writes a numeric runtime field when a value is available.
---@param object table|nil
---@param key string
---@param value number|nil
---@return boolean changed
local function set_number(object, key, value)
    if not object or value == nil then
        return false
    end

    object[key] = value
    return true
end

--- Returns whether an entity is a tree prototype at runtime.
---@param entity LuaEntity|nil
---@return boolean is_tree
local function is_tree(entity)
    return entity ~= nil and entity.valid and entity.type == "tree"
end

--- Captures runtime variation fields before replacing an entity prototype.
---@param entity LuaEntity
---@return table state
local function capture_variation_state(entity)
    local state = {
        graphics_variation = nil,
        tree_color_index = nil,
        tree_stage_index = nil,
        tree_gray_stage_index = nil,
    }

    if variation_counts[entity.name] then
        state.graphics_variation = get_number(entity, "graphics_variation")
    end

    if is_tree(entity) then
        state.tree_color_index = get_number(entity, "tree_color_index")
        state.tree_stage_index = get_number(entity, "tree_stage_index")
        state.tree_gray_stage_index = get_number(entity, "tree_gray_stage_index")
    end

    return state
end

--- Restores runtime variation fields after replacing an entity prototype.
---@param entity LuaEntity|nil
---@param state table|nil
local function restore_variation_state(entity, state)
    if not (entity and entity.valid and state) then
        return
    end

    if variation_counts[entity.name] then
        set_number(entity, "graphics_variation", state.graphics_variation)
    end

    if is_tree(entity) then
        set_number(entity, "tree_color_index", state.tree_color_index)
        set_number(entity, "tree_stage_index", state.tree_stage_index)
        set_number(entity, "tree_gray_stage_index", state.tree_gray_stage_index)
    end
end

--- Returns the next available prototype name in a variant group.
---@param entity_name string
---@return string|nil name
local function next_name_in_group(entity_name)
    local group = prototype_groups[entity_name]
    if not group or #group < 2 then
        return nil
    end

    local current_index = 1
    for index, name in ipairs(group) do
        if name == entity_name then
            current_index = index
            break
        end
    end

    for offset = 1, #group - 1 do
        local candidate_index = ((current_index + offset - 1) % #group) + 1
        local candidate = group[candidate_index]
        if candidate ~= entity_name and prototypes.entity[candidate] then
            return candidate
        end
    end

    return nil
end


--- Replaces an entity with another prototype while preserving visual variation fields.
---@param entity LuaEntity
---@param next_name string
---@param player LuaPlayer|nil
---@return boolean replaced
local function replace_with_prototype(entity, next_name, player)
    local surface = entity.surface
    local position = entity.position
    local direction = entity.direction
    local force = entity.force
    local variation_state = capture_variation_state(entity)

    entity.destroy({ raise_destroy = true, player = player })

    local replacement = surface.create_entity({
        name = next_name,
        position = position,
        direction = direction,
        force = force,
        player = player,
        raise_built = true,
        create_build_effect_smoke = false,
    })

    if replacement and replacement.valid then
        restore_variation_state(replacement, variation_state)
        return true
    end

    return false
end

--- Cycles between grouped prototype names for leaf/color changes.
---@param entity LuaEntity
---@param player LuaPlayer|nil
---@return boolean changed
local function cycle_prototype_group(entity, player)
    local next_name = next_name_in_group(entity.name)
    if not next_name then
        return false
    end

    return replace_with_prototype(entity, next_name, player)
end

--- Cycles a tree's color index in place.
---@param entity LuaEntity
---@return boolean changed
local function cycle_tree_color(entity)
    if not is_tree(entity) then
        return false
    end

    local count = tree_color_counts[entity.name]
    if not count or count < 2 then
        return false
    end

    local current = get_number(entity, "tree_color_index") or 1
    local next_color = current + 1
    if current < 1 or current >= count then
        next_color = 1
    end

    return set_number(entity, "tree_color_index", next_color)
end

--- Cycles an entity's graphics variation in place.
---@param entity LuaEntity
---@return boolean changed
local function cycle_graphics_variation(entity)
    local count = variation_counts[entity.name]
    if not count or count < 2 then
        return false
    end

    local current = get_number(entity, "graphics_variation")
    if not current then
        return false
    end

    local next_variation = current + 1
    if current < 1 or current >= count then
        next_variation = 1
    end

    return set_number(entity, "graphics_variation", next_variation)
end

--- Handles the leaf/color variant custom input.
---@param event EventData.CustomInputEvent
function variant_cycler.on_cycle_color_variant(event)
    local player = game.get_player(event.player_index)
    local entity = selected_tracked_entity(player)
    if not entity then
        return
    end

    if cycle_prototype_group(entity, player) then
        return
    end

    cycle_tree_color(entity)
end

--- Handles the trunk/shape variant custom input.
---@param event EventData.CustomInputEvent
function variant_cycler.on_cycle_shape_variant(event)
    local player = game.get_player(event.player_index)
    local entity = selected_tracked_entity(player)
    if entity then
        cycle_graphics_variation(entity)
    end
end

return variant_cycler
