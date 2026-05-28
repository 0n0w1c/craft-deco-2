local variant_counts = require("scripts.variant-counts")

local MAX_PREVIEW_SIZE = 80

---@class CraftDecoSpriteSize
---@field [1] number|nil
---@field [2] number|nil
---@field width number|nil
---@field height number|nil

---@class CraftDecoSpriteSource
---@field filename string|nil
---@field width number|nil
---@field height number|nil
---@field size number|CraftDecoSpriteSize|nil
---@field x number|nil
---@field y number|nil
---@field scale number|nil
---@field tint table|nil
---@field flags table|nil
---@field mipmap_count number|nil
---@field priority string|nil
---@field layers CraftDecoSpriteSource[]|nil
---@field sheets CraftDecoSpriteSource[]|nil

---@type table<string, boolean>
local generated = {}

--- Returns explicit width and height values for a sprite source.
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
        local width = size[1] or size.width
        local height = size[2] or size.height
        return width, height
    end

    return nil, nil
end

--- Calculates a scale that fits a source image inside the picker button.
---@param width number|nil
---@param height number|nil
---@return number scale
local function scaled_sprite_size(width, height)
    local longest = math.max(width or 1, height or 1)
    if longest <= 0 then
        return 1
    end

    return math.min(1, MAX_PREVIEW_SIZE / longest)
end

--- Deep-copies a tint/color table when present.
---@param color table|nil
---@return table|nil copy
local function color_copy(color)
    if not color then
        return nil
    end

    return table.deepcopy(color)
end

--- Finds the first directly renderable layer from a nested sprite definition.
---@param source CraftDecoSpriteSource|nil
---@return CraftDecoSpriteSource|nil layer
local function first_renderable_layer(source)
    if not source then
        return nil
    end

    if source.filename then
        return source
    end

    if source.layers then
        for _, layer in pairs(source.layers) do
            if layer.filename then
                return layer
            end
        end
    end

    if source.sheets then
        for _, sheet in pairs(source.sheets) do
            if sheet.filename then
                return sheet
            end
        end
    end

    return nil
end

--- Returns a source sprite for a graphics variation preview.
---@param entity table|nil Prototype table from data.raw.
---@param index integer Variation index to preview.
---@return CraftDecoSpriteSource|nil source
local function variation_picture(entity, index)
    if not entity then
        return nil
    end

    local variation = entity.variations and entity.variations[index]
    if variation then
        return first_renderable_layer(variation.leaves)
            or first_renderable_layer(variation.trunk)
            or first_renderable_layer(variation.picture)
            or first_renderable_layer(variation)
    end

    if entity.pictures then
        if entity.pictures.filename or entity.pictures.layers then
            return first_renderable_layer(entity.pictures)
        end

        return first_renderable_layer(entity.pictures[index])
    end

    return first_renderable_layer(entity.picture)
end

--- Returns a source sprite to tint for tree-color previews.
---@param entity table|nil Prototype table from data.raw.
---@return CraftDecoSpriteSource|nil source
local function tree_color_picture(entity)
    if not entity then
        return nil
    end

    local variation = entity.variations and entity.variations[1]
    if variation then
        return first_renderable_layer(variation.leaves)
            or first_renderable_layer(variation.trunk)
            or first_renderable_layer(variation)
    end

    return variation_picture(entity, 1)
end

--- Creates a SpritePrototype for a GUI preview button.
---@param name string
---@param source CraftDecoSpriteSource|nil
---@param tint table|nil
local function add_gui_sprite(name, source, tint)
    source = first_renderable_layer(source)
    if not source or not source.filename or generated[name] then
        return
    end

    local width, height = normalize_size(source)
    if not width or not height then
        return
    end

    local sprite = {
        type = "sprite",
        name = name,
        filename = source.filename,
        width = width,
        height = height,
        x = source.x,
        y = source.y,
        scale = scaled_sprite_size(width, height),
        tint = color_copy(tint) or color_copy(source.tint),
    }

    if source.flags then
        sprite.flags = table.deepcopy(source.flags)
    end
    if source.mipmap_count then
        sprite.mipmap_count = source.mipmap_count
    end
    if source.priority then
        sprite.priority = source.priority
    end

    generated[name] = true
    data:extend({ sprite })
end

--- Counts prototype picture entries that can be sampled for graphics previews.
---@param entity table|nil Prototype table from data.raw.
---@return integer count
local function graphics_picture_count(entity)
    if not entity then
        return 0
    end

    if entity.variations then
        return #entity.variations
    end

    if entity.pictures and not entity.pictures.filename then
        return #entity.pictures
    end

    if entity.picture then
        return 1
    end

    return 0
end

--- Creates graphics-variation preview sprites for an entity.
---@param entity table|nil Prototype table from data.raw.
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
            variation_picture(entity, picture_index)
        )
    end
end

--- Creates tinted tree-color preview sprites for an entity.
---@param entity table|nil Prototype table from data.raw.
local function make_tree_color_sprites(entity)
    if not entity or not entity.name or not entity.colors then
        return
    end

    local source = tree_color_picture(entity)
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

--- Generates all variant-picker preview sprites for supported entity types.
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
