if not mods["cliff-builder"] then return end

local subgroup = "craftable-cliffs"
local items = data.raw["item"] or {}
local cliffs = data.raw["cliff"] or {}

local cliff_item_names = {}
for name, item in pairs(items) do
    if not item.hidden
        and item.place_result
        and cliffs[item.place_result]
    then
        table.insert(cliff_item_names, name)
    end
end

for index, name in ipairs(cliff_item_names) do
    local order = string.format("a[%03d]-%s", index, name)
    local item = items[name]
    item.subgroup = subgroup
    item.order = order
end
