local utils = {}

--- Recursively merges values from one array/table into another.
--- Nested tables are merged by key; scalar values are appended to the target table.
---@param target table Table to modify in place.
---@param source table Values to merge into the target table.
function utils.array_concat(target, source)
    for key, value in pairs(source) do
        if type(value) == "table" then
            if not target[key] then
                target[key] = {}
            end
            utils.array_concat(target[key], value)
        else
            table.insert(target, value)
        end
    end
end

--- Creates an item subgroup prototype.
---@param name string Item subgroup name.
---@param group string Parent item group name.
---@param order string Sort order.
function utils.create_item_subgroup(name, group, order)
    data:extend({
        {
            type = "item-subgroup",
            name = name,
            group = group,
            order = order
        }
    })
end

--- Builds recipe ingredients from an entity's mining results.
---@param name string Entity prototype name.
---@param prototype_type string Entity prototype type in data.raw.
---@return table ingredients Recipe ingredient list.
function utils.entity_ingredients(name, prototype_type)
    local entity = data.raw[prototype_type] and data.raw[prototype_type][name]
    local ingredients = {}

    if not entity or not entity.minable then
        return ingredients
    end

    if entity.minable.results then
        for _, result in pairs(entity.minable.results) do
            local amount = result.amount_max or result.amount or 1
            table.insert(ingredients, {
                type = result.type or "item",
                name = result.name,
                amount = math.max(1, math.ceil(amount * 1.5))
            })
        end
    elseif entity.minable.result then
        local amount = entity.minable.count or 1
        table.insert(ingredients, {
            type = "item",
            name = entity.minable.result,
            amount = math.max(1, math.ceil(amount * 1.5))
        })
    end

    return ingredients
end

--- Creates matching item and recipe prototypes for an existing placeable entity.
---@param name string Entity prototype name.
---@param prototype_type string Entity prototype type in data.raw.
---@param group string Item group name.
---@param subgroup string Item subgroup name.
---@param order string Item and recipe sort order.
function utils.make_it_craftable(name, prototype_type, group, subgroup, order)
    local entity_type = data.raw[prototype_type]
    if not entity_type then return end

    local entity = entity_type[name]
    if not entity then return end

    local item = {
        type = "item",
        name = name,
        group = group,
        subgroup = subgroup,
        order = order,
        stack_size = 20,
        place_result = name,
        localised_name = entity.localised_name
    }

    if entity.icons then
        item.icons = entity.icons
    elseif entity.icon then
        item.icon = entity.icon
        item.icon_size = entity.icon_size or 64
    else
        item.icon = "__craft-deco-2__/graphics/icons/missing.png"
        item.icon_size = 64
    end

    local recipe = {
        type = "recipe",
        name = name,
        energy_required = 1,
        enabled = false,
        category = "crafting",
        ingredients = utils.entity_ingredients(name, prototype_type),
        results = {
            {
                type = "item",
                name = name,
                amount = 1
            }
        }
    }

    data:extend({ item, recipe })
end

return utils
