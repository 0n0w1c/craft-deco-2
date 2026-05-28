---@class VariantCycler
---@field open_variant_picker fun(player: LuaPlayer|nil) Opens the picker for a supported selected entity.
---@field on_open_variant_picker fun(event: EventData.CustomInputEvent) Handles picker-opening custom inputs.
---@field on_gui_click fun(event: EventData.on_gui_click) Handles variant picker GUI clicks.
---@field on_gui_closed fun(event: EventData.on_gui_closed) Handles picker close events.
---@field on_cycle_color_variant fun(event: EventData.CustomInputEvent) Handles the color/prototype quick-cycle input.
---@field on_cycle_shape_variant fun(event: EventData.CustomInputEvent) Handles the graphics/shape quick-cycle input.

local variant_cycler = {}

local variation_counts = require("scripts.variant-counts")
local tree_color_counts = require("scripts.tree-color-counts")
local prototype_groups = require("scripts.prototype-groups")
local alien_biomes_constants = require("prototypes.alien-biomes.constants")

local GUI_NAME = "craft_deco_2_variant_picker"
local GUI_PREFIX = "craft-deco-2-variant-picker-"

local BUTTON_SIZE = 88
local BUTTON_COLUMNS = 6
local BUTTON_SPACING = 8
local SECTION_WIDTH = BUTTON_COLUMNS * BUTTON_SIZE + (BUTTON_COLUMNS - 1) * BUTTON_SPACING + 8
local FRAME_WIDTH = SECTION_WIDTH + 28
local SCROLL_WIDTH = SECTION_WIDTH + 8
local SCROLL_HEIGHT = 656

---@alias CraftDecoVariantAction "close"|"prototype"|"tree-color"|"graphics"

---@class CraftDecoVariantPickerState
---@field entity LuaEntity|nil

---@class CraftDecoVariationState
---@field graphics_variation number|nil
---@field tree_color_index number|nil
---@field tree_stage_index number|nil
---@field tree_gray_stage_index number|nil

---@type table<string, boolean>|nil
local tracked_names

---@type string[]
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

--- Adds prototype names to a lookup set.
---@param names table<string, boolean>
---@param list string[]|nil
local function add_names(names, list)
    for _, name in pairs(list or {}) do
        add_name(names, name)
    end
end

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

--- Builds the set of entity names supported by cycling or the variant picker.
---@return table<string, boolean> names Lookup table keyed by entity prototype name.
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

--- Returns the selected entity when it is supported by this module.
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

--- Reads a numeric GUI tag value.
---@param tags Tags|nil
---@param key string
---@return number|nil value
local function get_tag_number(tags, key)
    if not tags then
        return nil
    end

    local value = tags[key]
    if type(value) == "number" then
        return value
    end

    return nil
end

--- Returns whether an entity is a tree prototype at runtime.
---@param entity LuaEntity|nil
---@return boolean is_tree
local function is_tree(entity)
    return entity ~= nil and entity.valid and entity.type == "tree"
end

--- Captures runtime variation fields before replacing an entity prototype.
---@param entity LuaEntity
---@return CraftDecoVariationState state
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
---@param state CraftDecoVariationState|nil
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

--- Replaces an entity with another prototype while preserving visual variants.
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

--- Returns the persistent per-player GUI state table.
---@param player_index uint
---@return CraftDecoVariantPickerState state
local function player_gui_state(player_index)
    storage.craft_deco_2_variant_picker = storage.craft_deco_2_variant_picker or {}
    storage.craft_deco_2_variant_picker[player_index] = storage.craft_deco_2_variant_picker[player_index] or {}
    return storage.craft_deco_2_variant_picker[player_index]
end

--- Destroys the variant picker for a player and clears its saved entity handle.
---@param player LuaPlayer|nil
local function close_variant_picker(player)
    if not player then
        return
    end

    local root = player.gui.screen[GUI_NAME]
    if root and root.valid then
        root.destroy()
    end

    if storage.craft_deco_2_variant_picker then
        storage.craft_deco_2_variant_picker[player.index] = nil
    end
end

--- Safely resolves the entity currently edited by the picker.
---@param player LuaPlayer|nil
---@return LuaEntity|nil entity
local function picker_entity(player)
    if not player then
        return nil
    end

    local state = player_gui_state(player.index)
    local entity = state.entity
    if entity and entity.valid then
        return entity
    end

    entity = selected_tracked_entity(player)
    if entity then
        state.entity = entity
        return entity
    end

    close_variant_picker(player)
    return nil
end

--- Returns tooltip text for a runtime variant button.
---@param label string
---@param index integer
---@param current integer|nil
---@return string caption
local function numbered_caption(label, index, current)
    if current == index then
        return "[" .. label .. " " .. index .. "]"
    end
    return label .. " " .. index
end

--- Applies the common square button size used by variant picker sprites.
---@param button LuaGuiElement
local function apply_variant_button_style(button)
    button.style.width = BUTTON_SIZE
    button.style.height = BUTTON_SIZE
end

--- Adds a selectable prototype-group button.
---@param parent LuaGuiElement
---@param prototype_name string
---@param current_name string
local function add_prototype_button(parent, prototype_name, current_name)
    local prototype = prototypes.entity[prototype_name]
    local button = parent.add({
        type = "sprite-button",
        name = GUI_PREFIX .. "prototype-" .. prototype_name,
        sprite = "entity/" .. prototype_name,
        tooltip = prototype and prototype.localised_name or prototype_name,
        tags = { craft_deco_2_action = "prototype", prototype_name = prototype_name },
    })

    apply_variant_button_style(button)
    if prototype_name == current_name then
        button.enabled = false
    end
end

--- Returns the generated GUI sprite name for a runtime variant.
---@param entity_name string
---@param action "tree-color"|"graphics"
---@param index integer
---@return string sprite_name
local function variant_sprite_name(entity_name, action, index)
    return "craft-deco-2-" .. action .. "-" .. entity_name .. "-" .. index
end

--- Adds a selectable runtime-variant sprite button.
---@param parent LuaGuiElement
---@param entity LuaEntity
---@param action "tree-color"|"graphics"
---@param label string
---@param index integer
---@param current integer|nil
local function add_variant_sprite_button(parent, entity, action, label, index, current)
    local button = parent.add({
        type = "sprite-button",
        name = GUI_PREFIX .. action .. "-" .. index,
        sprite = variant_sprite_name(entity.name, action, index),
        tooltip = numbered_caption(label, index, current),
        tags = { craft_deco_2_action = action, index = index },
    })

    apply_variant_button_style(button)
    if current == index then
        button.enabled = false
    end
end

--- Adds an inset section with a header and a fixed six-column button table.
---@param parent LuaGuiElement
---@param caption LocalisedString|string
---@return LuaGuiElement table_element
local function add_section(parent, caption)
    local outer = parent.add({ type = "frame", direction = "vertical", style = "inside_deep_frame" })
    outer.style.minimal_width = SECTION_WIDTH
    outer.style.maximal_width = SECTION_WIDTH
    outer.style.bottom_margin = 10
    outer.style.padding = 8

    local label = outer.add({ type = "label", caption = caption })
    label.style.bottom_margin = 6

    local table_element = outer.add({ type = "table", column_count = BUTTON_COLUMNS })
    table_element.style.horizontal_spacing = BUTTON_SPACING
    table_element.style.vertical_spacing = BUTTON_SPACING
    return table_element
end

--- Adds the centered selected-entity summary line.
---@param parent LuaGuiElement
---@param entity LuaEntity
local function add_selected_label(parent, entity)
    local selected = parent.add({
        type = "label",
        caption = { "", "Selected: ", entity.localised_name, " (", entity.name, ")" },
    })
    selected.style.horizontal_align = "center"
    selected.style.horizontally_stretchable = true
    selected.style.bottom_margin = 10
end

--- Adds prototype-group buttons when the selected entity belongs to a group.
---@param parent LuaGuiElement
---@param entity LuaEntity
local function add_prototype_section(parent, entity)
    local group = prototype_groups[entity.name]
    if not group or #group < 2 then
        return
    end

    local table_element = add_section(parent, "Prototype / color variants")
    for _, prototype_name in ipairs(group) do
        if prototypes.entity[prototype_name] then
            add_prototype_button(table_element, prototype_name, entity.name)
        end
    end
end

--- Adds tree color-index buttons when the selected entity supports them.
---@param parent LuaGuiElement
---@param entity LuaEntity
local function add_tree_color_section(parent, entity)
    if not is_tree(entity) then
        return
    end

    local color_count = tree_color_counts[entity.name]
    if not color_count or color_count < 2 then
        return
    end

    local current_color = get_number(entity, "tree_color_index") or 1
    local table_element = add_section(parent, "Tree color index")
    for index = 1, color_count do
        add_variant_sprite_button(table_element, entity, "tree-color", "Color", index, current_color)
    end
end

--- Adds graphics-variation buttons when the selected entity supports them.
---@param parent LuaGuiElement
---@param entity LuaEntity
local function add_graphics_section(parent, entity)
    local variation_count = variation_counts[entity.name]
    if not variation_count or variation_count < 2 then
        return
    end

    local current_variation = get_number(entity, "graphics_variation") or 1
    local table_element = add_section(parent, "Shape / graphics variants")
    for index = 1, variation_count do
        add_variant_sprite_button(table_element, entity, "graphics", "Shape", index, current_variation)
    end
end

--- Rebuilds all selectable variant controls in the open picker.
---@param player LuaPlayer
local function redraw_variant_picker(player)
    local entity = picker_entity(player)
    if not entity then
        return
    end

    local frame = player.gui.screen[GUI_NAME]
    if not (frame and frame.valid) then
        return
    end

    local scroll = frame[GUI_PREFIX .. "scroll"]
    local content = scroll and scroll.valid and scroll[GUI_PREFIX .. "content"]
    if not (content and content.valid) then
        return
    end

    content.clear()
    add_selected_label(content, entity)
    add_prototype_section(content, entity)
    add_tree_color_section(content, entity)
    add_graphics_section(content, entity)
end

--- Adds the standard Factorio 2.0 titlebar, including draggable space and close.
---@param frame LuaGuiElement
local function add_titlebar(frame)
    local titlebar = frame.add({ type = "flow", direction = "horizontal", style = "frame_header_flow" })
    titlebar.drag_target = frame

    local title = titlebar.add({ type = "label", style = "frame_title", caption = "Decorative variants" })
    title.drag_target = frame

    local filler = titlebar.add({ type = "empty-widget", style = "draggable_space_header" })
    filler.style.horizontally_stretchable = true
    filler.style.height = 24
    filler.drag_target = frame

    titlebar.add({
        type = "sprite-button",
        name = GUI_PREFIX .. "close",
        sprite = "utility/close",
        style = "close_button",
        tags = { craft_deco_2_action = "close" },
    })
end

--- Adds and styles the scroll pane that contains picker sections.
---@param frame LuaGuiElement
---@return LuaGuiElement content_flow
local function add_scroll_content(frame)
    local scroll = frame.add({ type = "scroll-pane", name = GUI_PREFIX .. "scroll" })
    scroll.style.minimal_width = SCROLL_WIDTH
    scroll.style.maximal_width = SCROLL_WIDTH
    scroll.style.maximal_height = SCROLL_HEIGHT
    scroll.style.horizontally_stretchable = true

    local content_flow = scroll.add({ type = "flow", name = GUI_PREFIX .. "content", direction = "vertical" })
    content_flow.style.horizontally_stretchable = true
    return content_flow
end

--- Opens the variant picker for the currently selected supported entity.
---@param player LuaPlayer|nil
function variant_cycler.open_variant_picker(player)
    local entity = selected_tracked_entity(player)
    if not (player and entity) then
        return
    end

    close_variant_picker(player)
    player_gui_state(player.index).entity = entity

    local frame = player.gui.screen.add({ type = "frame", name = GUI_NAME, direction = "vertical" })
    frame.style.minimal_width = FRAME_WIDTH
    frame.style.maximal_width = FRAME_WIDTH
    frame.style.maximal_height = 760

    add_titlebar(frame)
    add_scroll_content(frame)

    frame.force_auto_center()
    player.opened = frame
    redraw_variant_picker(player)
end

--- Handles the picker-opening custom input.
---@param event EventData.CustomInputEvent
function variant_cycler.on_open_variant_picker(event)
    variant_cycler.open_variant_picker(game.get_player(event.player_index))
end

--- Handles clicks from the variant picker GUI.
---@param event EventData.on_gui_click
function variant_cycler.on_gui_click(event)
    local element = event.element
    if not (element and element.valid and element.tags) then
        return
    end

    local action = element.tags.craft_deco_2_action
    if not action then
        return
    end

    local player = game.get_player(event.player_index)
    if not player then
        return
    end

    if action == "close" then
        close_variant_picker(player)
        return
    end

    local entity = picker_entity(player)
    if not entity then
        return
    end

    if action == "prototype" then
        local prototype_name = element.tags.prototype_name
        if type(prototype_name) == "string" and prototype_name ~= entity.name and prototypes.entity[prototype_name] then
            local position = entity.position
            if replace_with_prototype(entity, prototype_name, player) then
                player_gui_state(player.index).entity = player.surface.find_entity(prototype_name, position) or selected_tracked_entity(player)
            end
        end
    elseif action == "tree-color" then
        set_number(entity, "tree_color_index", get_tag_number(element.tags, "index"))
    elseif action == "graphics" then
        set_number(entity, "graphics_variation", get_tag_number(element.tags, "index"))
    end

    redraw_variant_picker(player)
end

--- Clears picker state when the GUI is closed with Escape/E.
---@param event EventData.on_gui_closed
function variant_cycler.on_gui_closed(event)
    local player = game.get_player(event.player_index)
    if player and event.element and event.element.valid and event.element.name == GUI_NAME then
        close_variant_picker(player)
    end
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

---@cast variant_cycler VariantCycler
return variant_cycler
