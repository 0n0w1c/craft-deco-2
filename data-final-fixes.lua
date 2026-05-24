local rock_colors = {
    "tan", "white", "grey", "black", "purple", "red", "violet", "dustyrose",
    "cream", "brown", "beige", "aubergine"
}

local function patch_craft_deco_rock_item(alias_name)
    local item = data.raw.item and data.raw.item["craftdeco-base-" .. alias_name]
    local entity = data.raw["simple-entity"] and data.raw["simple-entity"][alias_name]
    if not item or not entity or not entity.icons then return end

    item.icon = nil
    item.icon_size = 64
    item.icons = table.deepcopy(entity.icons)
end

for _, color in pairs(rock_colors) do
    patch_craft_deco_rock_item("rock-big-" .. color)
    patch_craft_deco_rock_item("rock-huge-" .. color)
end
