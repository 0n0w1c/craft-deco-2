local variant_counts = require("scripts.variant-counts")

local MAX_PREVIEW_SIZE = 80

---@class CraftDecoSpriteSize
---@field [1] number|nil
---@field [2] number|nil
---@field width number|nil
---@field height number|nil

---@class CraftDecoSpriteSource
---@field filename string|nil
---@field filenames string[]|nil
---@field width number|nil
---@field height number|nil
---@field size number|CraftDecoSpriteSize|nil
---@field x number|nil
---@field y number|nil
---@field line_length integer|nil
---@field variation_count integer|nil
---@field scale number|nil
---@field shift table|nil
---@field tint table|nil
---@field flags table|nil
---@field mipmap_count number|nil
---@field priority string|nil
---@field surface string|nil
---@field draw_as_shadow boolean|nil
---@field draw_as_glow boolean|nil
---@field draw_as_light boolean|nil
---@field layers CraftDecoSpriteSource[]|nil
---@field sheets CraftDecoSpriteSource[]|nil

---@type table<string, boolean>
local generated_sprite_names = {}

---@param source CraftDecoSpriteSource
---@return number|nil width
---@return number|nil height
local function normalize_size(source)
    if source.width and source.height then
        return source.width, source.height
    end

    ---@type number|CraftDecoSpriteSize|nil
    local size = source.size
    if type(size) == "number" then
        return size, size
    end

    if type(size) == "table" then
        return size[1] or size.width, size[2] or size.height
    end

    return nil, nil
end

---@param width number|nil
---@param height number|nil
---@return number scale
local function preview_scale(width, height)
    local longest = math.max(width or 1, height or 1)
    if longest <= 0 then
        return 1
    end

    return math.min(1, MAX_PREVIEW_SIZE / longest)
end

---@param color table|nil
---@return table|nil copy
local function copy_color(color)
    if not color then
        return nil
    end

    return table.deepcopy(color)
end

---@param source CraftDecoSpriteSource|nil
---@return boolean renderable
local function is_renderable_source(source)
    return source ~= nil and (source.filename ~= nil or source.filenames ~= nil)
end

---@param source CraftDecoSpriteSource
---@return table[] child_lists
local function sprite_child_lists(source)
    local child_lists = {}

    if source.layers then
        child_lists[#child_lists + 1] = source.layers
    end

    if source.sheets then
        child_lists[#child_lists + 1] = source.sheets
    end

    return child_lists
end

---@param source CraftDecoSpriteSource|nil
---@return CraftDecoSpriteSource|nil layer
local function first_renderable_source(source)
    if not source then
        return nil
    end

    if is_renderable_source(source) then
        return source
    end

    for _, children in pairs(sprite_child_lists(source)) do
        for _, child in pairs(children) do
            local renderable = first_renderable_source(child)
            if renderable then
                return renderable
            end
        end
    end

    return nil
end

---@param source CraftDecoSpriteSource|nil
---@param result CraftDecoSpriteSource[]|nil
---@return CraftDecoSpriteSource[] result
local function collect_renderable_sources(source, result)
    result = result or {}
    if not source then
        return result
    end

    if is_renderable_source(source) then
        result[#result + 1] = source
        return result
    end

    for _, children in pairs(sprite_child_lists(source)) do
        for _, child in pairs(children) do
            collect_renderable_sources(child, result)
        end
    end

    return result
end

---@param source CraftDecoSpriteSource|nil
---@return integer count
local function source_variation_count(source)
    if not source then
        return 0
    end

    local count = 0
    if source.variation_count then
        count = math.max(count, source.variation_count)
    end
    if source.filenames then
        count = math.max(count, #source.filenames)
    end
    if source.filename and count == 0 then
        count = 1
    end

    for _, children in pairs(sprite_child_lists(source)) do
        for _, child in pairs(children) do
            count = math.max(count, source_variation_count(child))
        end
    end

    return count
end

--- Selects one concrete image from normal spritesheets or Space Age filename lists.
---@param source CraftDecoSpriteSource|nil
---@param index integer
---@return CraftDecoSpriteSource|nil source
local function source_for_variation(source, index)
    source = first_renderable_source(source)
    if not source then
        return nil
    end

    ---@type CraftDecoSpriteSource
    local selected = table.deepcopy(source)
    local width, height = normalize_size(selected)
    if not width or not height then
        return nil
    end

    if selected.filenames and #selected.filenames > 0 then
        selected.filename = selected.filenames[((index - 1) % #selected.filenames) + 1]
        selected.filenames = nil
        selected.x = selected.x or 0
        selected.y = selected.y or 0
        return selected
    end

    if selected.filename and selected.variation_count and selected.variation_count > 1 then
        local line_length = selected.line_length or selected.variation_count
        local zero_based = (index - 1) % selected.variation_count
        selected.x = (selected.x or 0) + (zero_based % line_length) * width
        selected.y = (selected.y or 0) + math.floor(zero_based / line_length) * height
    end

    return selected
end

---@param source CraftDecoSpriteSource|nil
---@param index integer
---@return CraftDecoSpriteSource[] layers
local function layers_for_variation(source, index)
    local layers = {}

    for _, renderable in pairs(collect_renderable_sources(source)) do
        local layer = source_for_variation(renderable, index)
        if layer then
            layers[#layers + 1] = layer
        end
    end

    return layers
end

---@param layers CraftDecoSpriteSource[]
---@param source CraftDecoSpriteSource|nil
---@param index integer
local function append_layer(layers, source, index)
    local layer = source_for_variation(source, index)
    if layer then
        layers[#layers + 1] = layer
    end
end

--- Returns preview layers for tree variations with separate trunk/leaves images.
---@param variation table|nil
---@param index integer
---@return CraftDecoSpriteSource[] layers
local function tree_variation_layers(variation, index)
    local layers = {}
    if not variation then
        return layers
    end

    append_layer(layers, variation.trunk, index)
    append_layer(layers, variation.leaves, index)

    if #layers > 0 then
        return layers
    end

    append_layer(layers, variation.picture, index)
    if #layers > 0 then
        return layers
    end

    return layers_for_variation(variation, index)
end

--- Returns sprite layers for a graphics-variation preview.
---
--- Trees with explicit trunk/leaves use both layers. Entities with
--- pictures[index].layers, such as ashland trees, use the first visible layer
--- only so shadow layers do not distort GUI previews.
---@param entity table|nil
---@param index integer
---@return CraftDecoSpriteSource[] layers
local function graphics_preview_layers(entity, index)
    if not entity then
        return {}
    end

    local variation = entity.variations and entity.variations[index]
    if variation then
        return tree_variation_layers(variation, index)
    end

    if entity.pictures then
        if entity.pictures.filename or entity.pictures.filenames or entity.pictures.layers or entity.pictures.sheets then
            return layers_for_variation(entity.pictures, index)
        end

        local picture = source_for_variation(entity.pictures[index], index)
        if picture then
            return { picture }
        end

        return {}
    end

    return layers_for_variation(entity.picture, index)
end

---@param entity table|nil
---@return CraftDecoSpriteSource|nil source
local function tree_color_preview_source(entity)
    if not entity then
        return nil
    end

    local variation = entity.variations and entity.variations[1]
    if variation then
        return source_for_variation(variation.leaves, 1)
            or source_for_variation(variation.trunk, 1)
            or source_for_variation(variation, 1)
    end

    local layers = graphics_preview_layers(entity, 1)
    return layers[1]
end

---@param source CraftDecoSpriteSource
---@param tint table|nil
---@return table|nil layer
local function make_sprite_layer(source, tint)
    local width, height = normalize_size(source)
    if not width or not height or not source.filename then
        return nil
    end

    local layer = {
        filename = source.filename,
        width = width,
        height = height,
        x = source.x,
        y = source.y,
        scale = preview_scale(width, height),
        shift = source.shift and table.deepcopy(source.shift) or nil,
        tint = copy_color(tint) or copy_color(source.tint),
    }

    if source.flags then
        layer.flags = table.deepcopy(source.flags)
    end
    if source.mipmap_count then
        layer.mipmap_count = source.mipmap_count
    end
    if source.priority then
        layer.priority = source.priority
    end
    if source.surface then
        layer.surface = source.surface
    end
    if source.draw_as_shadow then
        layer.draw_as_shadow = source.draw_as_shadow
    end
    if source.draw_as_glow then
        layer.draw_as_glow = source.draw_as_glow
    end
    if source.draw_as_light then
        layer.draw_as_light = source.draw_as_light
    end

    return layer
end

---@param sources CraftDecoSpriteSource[]|CraftDecoSpriteSource|nil
---@return CraftDecoSpriteSource[] layers
local function normalize_layer_list(sources)
    if not sources then
        return {}
    end

    if sources.filename or sources.filenames then
        return { sources }
    end

    return sources
end

---@param name string
---@param sources CraftDecoSpriteSource[]|CraftDecoSpriteSource|nil
---@param tint table|nil
local function add_gui_sprite(name, sources, tint)
    if generated_sprite_names[name] then
        return
    end

    local layers = {}
    for _, source in pairs(normalize_layer_list(sources)) do
        local layer = make_sprite_layer(source, tint)
        if layer then
            layers[#layers + 1] = layer
        end
    end

    if #layers == 0 then
        return
    end

    local sprite = #layers == 1 and layers[1] or { layers = layers }
    sprite.type = "sprite"
    sprite.name = name

    generated_sprite_names[name] = true
    data:extend({ sprite })
end

---@param entity table|nil
---@return integer count
local function graphics_picture_count(entity)
    if not entity then
        return 0
    end

    if entity.variations then
        return #entity.variations
    end

    if entity.pictures then
        if entity.pictures.filename or entity.pictures.filenames or entity.pictures.layers or entity.pictures.sheets then
            return source_variation_count(entity.pictures)
        end

        return #entity.pictures
    end

    return source_variation_count(entity.picture)
end

---@param entity table|nil
local function make_graphics_sprites(entity)
    if not entity or not entity.name then
        return
    end

    local picture_count = graphics_picture_count(entity)
    local runtime_count = variant_counts[entity.name] or picture_count
    local count = math.max(runtime_count, picture_count)

    for index = 1, count do
        local picture_index = index
        if picture_count > 0 and index > picture_count then
            picture_index = ((index - 1) % picture_count) + 1
        end

        add_gui_sprite(
            "craft-deco-2-graphics-" .. entity.name .. "-" .. index,
            graphics_preview_layers(entity, picture_index)
        )
    end
end

---@param entity table|nil
local function make_tree_color_sprites(entity)
    if not entity or not entity.name or not entity.colors then
        return
    end

    local source = tree_color_preview_source(entity)
    if not source then
        return
    end

    for index, color in pairs(entity.colors) do
        if type(index) == "number" then
            add_gui_sprite(
                "craft-deco-2-tree-color-" .. entity.name .. "-" .. index,
                source,
                color
            )
        end
    end
end

local function generate_variant_picker_sprites()
    for _, entity_type in pairs({ "tree", "simple-entity" }) do
        if data.raw[entity_type] then
            for _, entity in pairs(data.raw[entity_type]) do
                make_graphics_sprites(entity)
                make_tree_color_sprites(entity)
            end
        end
    end
end

generate_variant_picker_sprites()
