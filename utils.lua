local utils = {}

function utils.array_concat(t1, t2)
    for k, v in pairs(t2) do
        if type(v) == "table" then
            if not t1[k] then
                t1[k] = {}
            end
            utils.array_concat(t1[k], v)
        else
            table.insert(t1, v)
        end
    end
end

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

function utils.entity_ingredients(name, type)
    local entity = data.raw[type] and data.raw[type][name]
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

function utils.make_it_craftable(name, type, group, subgroup, order)
    local entity_type = data.raw[type]
    if not entity_type then return end

    local entity = entity_type[name]
    if not entity then return end

    local item = {
        type = "item",
        name = name,
        icon_size = 64,
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
    else
        item.icon = "__craft-deco-2__/graphics/icons/missing.png"
    end

    data:extend({ item })

    local recipe = {
        type = "recipe",
        name = name,
        energy_required = 1,
        enabled = false,
        category = "crafting",
        ingredients = utils.entity_ingredients(name, type),
        results = {
            {
                type = "item",
                name = name,
                amount = 1
            }
        }
    }

    data:extend({ recipe })
end

return utils
