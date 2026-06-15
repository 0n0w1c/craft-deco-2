if not mods["OyO-Snow-Concrete"] then return end

local concrete_names = {
    "emergency-concrete",
    "express-concrete",
    "green-concrete",
    "operations-concrete",
    "radiation-concrete",
    "safety-concrete",
    "warning-concrete",
    "custom-acid-concrete",
    "custom-black-concrete",
    "custom-blue-concrete",
    "custom-brown-concrete",
    "custom-cyan-concrete",
    "custom-green-concrete",
    "custom-orange-concrete",
    "custom-pink-concrete",
    "custom-purple-concrete",
    "custom-red-concrete",
    "custom-teal-concrete",
    "custom-yellow-concrete"
}

local function move_prototype(prototype_type, name, order)
    local prototypes = data.raw[prototype_type]
    local prototype = prototypes and prototypes[name]

    if prototype then
        prototype.subgroup = "craftable-concrete"
        prototype.order = order
    end
end

for index, name in ipairs(concrete_names) do
    local order = string.format("a[%02d]-%s", index, name)
    local refined_name = "refined-" .. name

    move_prototype("item", name, order)
    move_prototype("recipe", name, order)
    move_prototype("item", refined_name, "b" .. order)
    move_prototype("recipe", refined_name, "b" .. order)
end
