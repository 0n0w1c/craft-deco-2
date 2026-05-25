--- Data-final-fixes-stage polish for Alien Biomes craftable rocks.

if not mods["alien-biomes-graphics"] then return end

local constants = require("prototypes.alien-biomes.constants")

--- Returns the first renderable picture from an entity picture definition.
---@param entity table|nil Entity prototype table.
---@return table|nil picture
local function first_picture(entity)
    if not entity or not entity.pictures then return nil end
    if entity.pictures.filename then return entity.pictures end
    return entity.pictures[1]
end

--- Replaces a tinted Alien Biomes rock entity icon with a layered icon.
---@param entity table|nil Simple entity prototype table.
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

--- Copies a rock entity's generated layered icon to its craftable item.
---@param name string Rock prototype name.
local function patch_craft_deco_rock_item(name)
    local item = data.raw.item and data.raw.item[name]
    local entity = data.raw["simple-entity"] and data.raw["simple-entity"][name]
    if not item or not entity or not entity.icons then return end

    item.icon = nil
    item.icon_size = 64
    item.icons = table.deepcopy(entity.icons)
end

for _, base in pairs(constants.rock_bases) do
    for _, color in pairs(constants.rock_colors) do
        local name = base .. "-" .. color
        set_rock_icon(data.raw["simple-entity"] and data.raw["simple-entity"][name])
        patch_craft_deco_rock_item(name)
    end
end
