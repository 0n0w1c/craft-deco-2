---@class VariantCycler
---@field open_variant_picker fun(player: LuaPlayer|nil) Opens the picker for a supported selected entity.
---@field on_open_variant_picker fun(event: EventData.CustomInputEvent) Handles picker-opening custom inputs.
---@field on_gui_click fun(event: EventData.on_gui_click) Handles variant picker GUI clicks.
---@field on_gui_closed fun(event: EventData.on_gui_closed) Handles picker close events.
---@field on_entity_created fun(event: EventData.on_built_entity|EventData.script_raised_built|EventData.script_raised_revive) Sets created supported entities to neutral force.
---@field on_robot_built_entity fun(event: EventData.on_robot_built_entity) Sets robot-built supported entities to neutral force.
---@field on_player_removed fun(event: EventData.on_player_removed) Clears picker state for removed players.
---@field on_configuration_changed fun() Clears invalid runtime references after configuration changes.
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
local BUTTON_TABLE_WIDTH = BUTTON_COLUMNS * BUTTON_SIZE + (BUTTON_COLUMNS - 1) * BUTTON_SPACING

local CONTENT_WIDTH_NO_SCROLLBAR = BUTTON_TABLE_WIDTH + 32
local CONTENT_WIDTH_WITH_SCROLLBAR = BUTTON_TABLE_WIDTH + 36
local SCROLL_WIDTH_NO_SCROLLBAR = CONTENT_WIDTH_NO_SCROLLBAR
local SCROLL_WIDTH_WITH_SCROLLBAR = CONTENT_WIDTH_WITH_SCROLLBAR + 16
local FRAME_WIDTH_NO_SCROLLBAR = SCROLL_WIDTH_NO_SCROLLBAR + 22
local FRAME_WIDTH_WITH_SCROLLBAR = SCROLL_WIDTH_WITH_SCROLLBAR + 22
local SCROLL_HEIGHT = 656
local SCROLL_TOP_GUTTER = 8

local SECTION_HEIGHT_GUTTER = 76

---@alias CraftDecoVariantAction "close"|"prototype"|"tree-color"|"graphics"

---@class CraftDecoVariantPickerState
---@field entity LuaEntity|nil
---@field entity_name string|nil
---@field surface_index uint|nil
---@field position MapPosition|nil

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

--- Assigns an entity to the neutral force when possible.
---
--- Rocks, trees, and decoratives should remain neutral world entities rather
--- than becoming owned by the placing player's force.
---@param entity LuaEntity|nil
local function set_neutral_force(entity)
    if not (entity and entity.valid) then
        return
    end

    local neutral = game.forces.neutral
    if neutral then
        entity.force = neutral
    end
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
    local mirroring = entity.mirroring
    local variation_state = capture_variation_state(entity)

    entity.destroy({ raise_destroy = true, player = player })

    local replacement = surface.create_entity({
        name = next_name,
        position = position,
        direction = direction,
        mirror = mirroring,
        force = "neutral",
        player = player,
        raise_built = true,
        create_build_effect_smoke = false,
    })

    if replacement and replacement.valid then
        set_neutral_force(replacement)
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

--- Stores the entity currently edited by a player's picker.
---@param player_index uint
---@param entity LuaEntity|nil
local function set_player_picker_entity(player_index, entity)
    local state = player_gui_state(player_index)
    if entity and entity.valid then
        state.entity = entity
        state.entity_name = entity.name
        state.surface_index = entity.surface.index
        state.position = entity.position
        return
    end

    state.entity = nil
    state.entity_name = nil
    state.surface_index = nil
    state.position = nil
end

--- Clears one player's persisted picker state without touching other players.
---@param player_index uint
local function clear_player_picker_state(player_index)
    if storage.craft_deco_2_variant_picker then
        storage.craft_deco_2_variant_picker[player_index] = nil
    end
end

--- Clears all persisted picker state.
local function clear_all_picker_state()
    storage.craft_deco_2_variant_picker = {}
end

--- Attempts to re-resolve a picker entity from saved stable fields.
---@param state CraftDecoVariantPickerState
---@return LuaEntity|nil entity
local function resolve_saved_picker_entity(state)
    if not (state.entity_name and state.surface_index and state.position) then
        return nil
    end

    local surface = game.get_surface(state.surface_index)
    if not surface then
        return nil
    end

    local entity = surface.find_entity(state.entity_name, state.position)
    if entity and entity.valid then
        state.entity = entity
        return entity
    end

    return nil
end

--- Returns whether the player's currently opened object is this picker frame.
---@param player LuaPlayer
---@return boolean is_opened_picker
local function player_opened_is_picker(player)
    local opened = player.opened
    return opened ~= nil
        and opened.valid
        and opened.object_name == "LuaGuiElement"
        and opened.name == GUI_NAME
end

--- Returns whether another opened object should prevent opening this picker.
---@param player LuaPlayer
---@return boolean is_blocked
local function player_has_other_opened_object(player)
    local opened = player.opened
    return opened ~= nil and opened.valid and not player_opened_is_picker(player)
end

--- Destroys the variant picker for a player and clears its saved entity handle.
---@param player LuaPlayer|nil
local function close_variant_picker(player)
    if not player then
        return
    end

    local root = player.gui.screen[GUI_NAME]
    if root and root.valid then
        if player_opened_is_picker(player) then
            player.opened = nil
        end
        root.destroy()
    end

    clear_player_picker_state(player.index)
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

    entity = resolve_saved_picker_entity(state) or selected_tracked_entity(player)
    if entity then
        set_player_picker_entity(player.index, entity)
        return entity
    end

    close_variant_picker(player)
    return nil
end

--- Picker GUI construction ----------------------------------------------------

--- Returns the full GUI element name for a picker child element.
---@param suffix string
---@return string name
local function picker_element_name(suffix)
    return GUI_PREFIX .. suffix
end

--- Returns tooltip text for a runtime variant button.
---@param label LocalisedString|string
---@param index integer
---@param current integer|nil
---@return LocalisedString caption
local function variant_tooltip(label, index, current)
    local caption = { "craft-deco-2.variant-number", label, index }
    if current == index then
        return { "craft-deco-2.current-variant-number", caption }
    end

    return caption
end

--- Applies the common square size used by all picker sprite buttons.
---@param button LuaGuiElement
local function style_variant_button(button)
    button.style.width = BUTTON_SIZE
    button.style.height = BUTTON_SIZE
end

--- Adds a square sprite button used by the picker.
---@param parent LuaGuiElement
---@param name_suffix string
---@param sprite string
---@param tooltip LocalisedString|string
---@param tags Tags
---@param selected boolean|nil
---@return LuaGuiElement button
local function add_picker_sprite_button(parent, name_suffix, sprite, tooltip, tags, selected)
    local button = parent.add({
        type = "sprite-button",
        name = picker_element_name(name_suffix),
        sprite = sprite,
        tooltip = tooltip,
        tags = tags,
    })

    style_variant_button(button)
    if selected then
        button.enabled = false
    end

    return button
end

--- Adds a selectable prototype-group button.
---@param parent LuaGuiElement
---@param prototype_name string
---@param current_name string
local function add_prototype_button(parent, prototype_name, current_name)
    local prototype = prototypes.entity[prototype_name]
    add_picker_sprite_button(
        parent,
        "prototype-" .. prototype_name,
        "entity/" .. prototype_name,
        prototype and prototype.localised_name or prototype_name,
        { craft_deco_2_action = "prototype", prototype_name = prototype_name },
        prototype_name == current_name
    )
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
---@param label LocalisedString|string
---@param index integer
---@param current integer|nil
local function add_variant_sprite_button(parent, entity, action, label, index, current)
    add_picker_sprite_button(
        parent,
        action .. "-" .. index,
        variant_sprite_name(entity.name, action, index),
        variant_tooltip(label, index, current),
        { craft_deco_2_action = action, index = index },
        current == index
    )
end

--- Adds a caption label to a variant section.
---@param parent LuaGuiElement
---@param caption LocalisedString|string
local function add_section_caption(parent, caption)
    local label = parent.add({ type = "label", caption = caption })
    label.style.bottom_margin = 6
end

--- Adds a fixed six-column table for section buttons.
---@param parent LuaGuiElement
---@return LuaGuiElement table_element
local function add_variant_button_table(parent)
    local table_element = parent.add({ type = "table", column_count = BUTTON_COLUMNS })
    table_element.style.horizontal_spacing = BUTTON_SPACING
    table_element.style.vertical_spacing = BUTTON_SPACING
    table_element.style.horizontally_stretchable = false
    return table_element
end

--- Adds an inset section with a header and six-column button table.
---@param parent LuaGuiElement
---@param caption LocalisedString|string
---@return LuaGuiElement table_element
local function add_section(parent, caption)
    local section = parent.add({ type = "frame", direction = "vertical", style = "inside_deep_frame" })
    section.style.horizontally_stretchable = false
    section.style.bottom_margin = 10
    section.style.padding = 6

    add_section_caption(section, caption)
    return add_variant_button_table(section)
end

--- Returns the localised selected-entity summary caption.
---@param entity LuaEntity
---@return LocalisedString caption
local function selected_label_caption(entity)
    return { "craft-deco-2.selected-entity", entity.localised_name, entity.name }
end

--- Adds the selected-entity summary line outside the scrolling content.
---@param parent LuaGuiElement
---@param entity LuaEntity
---@return LuaGuiElement selected
local function add_selected_label(parent, entity)
    local selected = parent.add({
        type = "label",
        name = picker_element_name("selected"),
        caption = selected_label_caption(entity),
    })
    selected.style.font = "default-bold"
    selected.style.horizontal_align = "center"
    selected.style.horizontally_stretchable = true
    selected.style.top_margin = 6
    selected.style.bottom_margin = 10
    return selected
end

--- Updates the selected-entity summary when a prototype replacement occurs.
---@param frame LuaGuiElement
---@param entity LuaEntity
local function update_selected_label(frame, entity)
    local selected = frame[picker_element_name("selected")]
    if selected and selected.valid then
        selected.caption = selected_label_caption(entity)
    end
end

--- Adds a small scrollable gutter so the first section's top border is visible.
---@param parent LuaGuiElement
local function add_scroll_top_gutter(parent)
    local spacer = parent.add({ type = "empty-widget" })
    spacer.style.height = SCROLL_TOP_GUTTER
end

--- Adds prototype-group buttons when the selected entity belongs to a group.
---@param parent LuaGuiElement
---@param entity LuaEntity
local function add_prototype_section(parent, entity)
    local group = prototype_groups[entity.name]
    if not group or #group < 2 then
        return
    end

    local table_element = add_section(parent, { "craft-deco-2.prototype-color-variants" })
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
    local table_element = add_section(parent, { "craft-deco-2.tree-color-index" })
    for index = 1, color_count do
        add_variant_sprite_button(table_element, entity, "tree-color", { "craft-deco-2.color" }, index, current_color)
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
    local table_element = add_section(parent, { "craft-deco-2.shape-graphics-variants" })
    for index = 1, variation_count do
        add_variant_sprite_button(table_element, entity, "graphics", { "craft-deco-2.shape" }, index, current_variation)
    end
end

--- Returns the number of button rows needed for a variant count.
---@param count integer|nil
---@return integer rows
local function button_row_count(count)
    if not count or count < 1 then
        return 0
    end

    return math.ceil(count / BUTTON_COLUMNS)
end

--- Returns the estimated height of one inset section.
---@param count integer|nil
---@return integer height
local function section_height_for_count(count)
    local rows = button_row_count(count)
    if rows == 0 then
        return 0
    end

    return rows * (BUTTON_SIZE + BUTTON_SPACING) + SECTION_HEIGHT_GUTTER
end

--- Returns the estimated scrollable content height for the selected entity.
---@param entity LuaEntity
---@return integer height
local function picker_scroll_content_height(entity)
    local height = SCROLL_TOP_GUTTER

    local group = prototype_groups[entity.name]
    if group and #group > 1 then
        height = height + section_height_for_count(#group)
    end

    if is_tree(entity) then
        height = height + section_height_for_count(tree_color_counts[entity.name])
    end

    height = height + section_height_for_count(variation_counts[entity.name])
    return height
end

--- Returns whether the picker will need a vertical scrollbar for this entity.
---@param entity LuaEntity
---@return boolean needs_scrollbar
local function picker_needs_vertical_scrollbar(entity)
    return picker_scroll_content_height(entity) > SCROLL_HEIGHT
end

--- Applies the compact or scrollbar-aware picker width.
---@param frame LuaGuiElement
---@param scroll LuaGuiElement
---@param content LuaGuiElement
---@param entity LuaEntity
local function apply_picker_width(frame, scroll, content, entity)
    local has_scrollbar = picker_needs_vertical_scrollbar(entity)
    local frame_width = has_scrollbar and FRAME_WIDTH_WITH_SCROLLBAR or FRAME_WIDTH_NO_SCROLLBAR
    local scroll_width = has_scrollbar and SCROLL_WIDTH_WITH_SCROLLBAR or SCROLL_WIDTH_NO_SCROLLBAR
    local content_width = has_scrollbar and CONTENT_WIDTH_WITH_SCROLLBAR or CONTENT_WIDTH_NO_SCROLLBAR

    frame.style.minimal_width = frame_width
    frame.style.maximal_width = frame_width
    scroll.style.width = scroll_width
    content.style.width = content_width
end

--- Rebuilds all selectable variant controls in the open picker.
---@param player LuaPlayer
local function redraw_variant_picker(player)
    local entity = picker_entity(player)
    if not entity then
        return
    end

    --- Returns the active picker frame for a player.
    ---@param player LuaPlayer
    ---@return LuaGuiElement|nil frame
    local function picker_frame(player)
        local frame = player.gui.screen[GUI_NAME]
        if frame and frame.valid then
            return frame
        end

        return nil
    end

    --- Returns the picker scroll pane and content flow.
    ---@param frame LuaGuiElement
    ---@return LuaGuiElement|nil scroll
    ---@return LuaGuiElement|nil content
    local function picker_scroll_elements(frame)
        local scroll = frame[picker_element_name("scroll")]
        local content = scroll and scroll.valid and scroll[picker_element_name("content")] or nil
        return scroll, content
    end

    local frame = picker_frame(player)
    if not frame then
        return
    end

    local scroll, content = picker_scroll_elements(frame)
    if not (scroll and content and content.valid) then
        return
    end

    apply_picker_width(frame, scroll, content, entity)
    update_selected_label(frame, entity)
    content.clear()
    add_scroll_top_gutter(content)
    add_prototype_section(content, entity)
    add_tree_color_section(content, entity)
    add_graphics_section(content, entity)
end

--- Adds the standard Factorio 2.0 titlebar, including draggable space and close.
---@param frame LuaGuiElement
local function add_titlebar(frame)
    local titlebar = frame.add({ type = "flow", direction = "horizontal", style = "frame_header_flow" })
    titlebar.drag_target = frame

    local title = titlebar.add({ type = "label", style = "frame_title", caption = { "craft-deco-2.variant-picker-title" } })
    title.drag_target = frame

    local filler = titlebar.add({ type = "empty-widget", style = "draggable_space_header" })
    filler.style.horizontally_stretchable = true
    filler.style.height = 24
    filler.drag_target = frame

    titlebar.add({
        type = "sprite-button",
        name = picker_element_name("close"),
        sprite = "utility/close",
        style = "close_button",
        tags = { craft_deco_2_action = "close" },
    })
end

--- Adds and styles the scroll pane that contains picker sections.
---@param frame LuaGuiElement
---@return LuaGuiElement content_flow
local function add_scroll_content(frame)
    local scroll = frame.add({ type = "scroll-pane", name = picker_element_name("scroll") })
    scroll.style.width = SCROLL_WIDTH_NO_SCROLLBAR
    scroll.style.maximal_height = SCROLL_HEIGHT
    scroll.style.horizontally_stretchable = false
    scroll.horizontal_scroll_policy = "never"
    scroll.vertical_scroll_policy = "auto"

    local content_flow = scroll.add({ type = "flow", name = picker_element_name("content"), direction = "vertical" })
    content_flow.style.width = CONTENT_WIDTH_NO_SCROLLBAR
    content_flow.style.horizontally_stretchable = false
    content_flow.style.horizontal_align = "center"
    return content_flow
end

--- Opens the variant picker for the currently selected supported entity.
---@param player LuaPlayer|nil
function variant_cycler.open_variant_picker(player)
    if not (player and player.valid) then
        return
    end

    local cursor_stack = player.cursor_stack
    if cursor_stack and cursor_stack.valid_for_read then
        return
    end

    local entity = selected_tracked_entity(player)
    if not entity then
        return
    end

    if player_has_other_opened_object(player) then
        return
    end

    close_variant_picker(player)
    set_player_picker_entity(player.index, entity)

    local frame = player.gui.screen.add({ type = "frame", name = GUI_NAME, direction = "vertical" })
    frame.style.minimal_width = FRAME_WIDTH_NO_SCROLLBAR
    frame.style.maximal_width = FRAME_WIDTH_NO_SCROLLBAR
    frame.style.maximal_height = 760

    add_titlebar(frame)
    add_selected_label(frame, entity)
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
                set_player_picker_entity(player.index,
                    player.surface.find_entity(prototype_name, position) or selected_tracked_entity(player))
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
    local element = event.element
    if player and element and element.valid and element.name == GUI_NAME then
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

--- Clears GUI state for a removed player.
---@param event EventData.on_player_removed
function variant_cycler.on_player_removed(event)
    clear_player_picker_state(event.player_index)
end

--- Clears runtime LuaEntity/LuaGuiElement references after configuration changes.
function variant_cycler.on_configuration_changed()
    clear_all_picker_state()
end

--- Ensures newly created supported decorative entities are neutral.
---@param entity LuaEntity|nil
local function neutralize_created_entity(entity)
    if not (entity and entity.valid) then
        return
    end

    tracked_names = tracked_names or build_tracked_names()
    if tracked_names[entity.name] then
        set_neutral_force(entity)
    end
end

--- Handles entities created by players or script.
---@param event EventData.on_built_entity|EventData.script_raised_built|EventData.script_raised_revive
function variant_cycler.on_entity_created(event)
    neutralize_created_entity(event.entity)
end

--- Handles entities created by construction robots.
---@param event EventData.on_robot_built_entity
function variant_cycler.on_robot_built_entity(event)
    neutralize_created_entity(event.entity)
end

---@cast variant_cycler VariantCycler
return variant_cycler
