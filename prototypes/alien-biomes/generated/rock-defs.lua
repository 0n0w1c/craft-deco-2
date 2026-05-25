return {
    {
        name = "rock-huge-tan",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            }
        },
        locale_key = "craft-deco-2-rock-001"
    },
    {
        name = "rock-big-tan",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7568627450980392, g = 0.6352941176470588, b = 0.4980392156862745 }
            }
        },
        locale_key = "craft-deco-2-rock-002"
    },
    {
        name = "rock-huge-dustyrose",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            }
        },
        locale_key = "craft-deco-2-rock-003"
    },
    {
        name = "rock-big-dustyrose",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7313725490196079, g = 0.607843137254902, b = 0.5176470588235293 }
            }
        },
        locale_key = "craft-deco-2-rock-004"
    },
    {
        name = "rock-huge-cream",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            }
        },
        locale_key = "craft-deco-2-rock-005"
    },
    {
        name = "rock-big-cream",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.8372549019607842, g = 0.7411764705882353, b = 0.6 }
            }
        },
        locale_key = "craft-deco-2-rock-006"
    },
    {
        name = "rock-huge-brown",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            }
        },
        locale_key = "craft-deco-2-rock-007"
    },
    {
        name = "rock-big-brown",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.696078431372549, g = 0.5470588235294117, b = 0.4215686274509804 }
            }
        },
        locale_key = "craft-deco-2-rock-008"
    },
    {
        name = "rock-huge-beige",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            }
        },
        locale_key = "craft-deco-2-rock-009"
    },
    {
        name = "rock-big-beige",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7274509803921568, g = 0.6392156862745098, b = 0.5196078431372548 }
            }
        },
        locale_key = "craft-deco-2-rock-010"
    },
    {
        name = "rock-huge-red",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            }
        },
        locale_key = "craft-deco-2-rock-011"
    },
    {
        name = "rock-big-red",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7411764705882353, g = 0.5274509803921569, b = 0.4549019607843137 }
            }
        },
        locale_key = "craft-deco-2-rock-012"
    },
    {
        name = "rock-huge-violet",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            }
        },
        locale_key = "craft-deco-2-rock-013"
    },
    {
        name = "rock-big-violet",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7019607843137254, g = 0.5274509803921569, b = 0.5647058823529412 }
            }
        },
        locale_key = "craft-deco-2-rock-014"
    },
    {
        name = "rock-huge-purple",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            }
        },
        locale_key = "craft-deco-2-rock-015"
    },
    {
        name = "rock-big-purple",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7098039215686274, g = 0.6647058823529411, b = 0.7176470588235294 }
            }
        },
        locale_key = "craft-deco-2-rock-016"
    },
    {
        name = "rock-huge-aubergine",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            }
        },
        locale_key = "craft-deco-2-rock-017"
    },
    {
        name = "rock-big-aubergine",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.6254901960784314, g = 0.5431372549019607, b = 0.5549019607843138 }
            }
        },
        locale_key = "craft-deco-2-rock-018"
    },
    {
        name = "rock-huge-black",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            }
        },
        locale_key = "craft-deco-2-rock-019"
    },
    {
        name = "rock-big-black",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.5749019607843138, g = 0.5505882352941177, b = 0.5231372549019608 }
            }
        },
        locale_key = "craft-deco-2-rock-020"
    },
    {
        name = "rock-huge-grey",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            }
        },
        locale_key = "craft-deco-2-rock-021"
    },
    {
        name = "rock-big-grey",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.7254901960784313, g = 0.6764705882352942, b = 0.615686274509804 }
            }
        },
        locale_key = "craft-deco-2-rock-022"
    },
    {
        name = "rock-huge-white",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-a[huge]",
        collision_box = {
            { -1.5, -1.1 },
            { 1.5,  1.1 }
        },
        selection_box = {
            { -1.7, -1.3 },
            { 1.7,  1.3 }
        },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.5,
            results = {
                { type = "item", name = "stone", amount_min = 20, amount_max = 40 },
                { type = "item", name = "coal",  amount_min = 0,  amount_max = 20 }
            }
        },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.42968799999999996, 0.046875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/huge-rock/huge-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            }
        },
        locale_key = "craft-deco-2-rock-023"
    },
    {
        name = "rock-big-white",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        order = "b[decorative]-l[rock]-b[big]",
        collision_box = {
            { -1, -0.9 },
            { 1,  1 }
        },
        selection_box = {
            { -1.2, -1.2 },
            { 1.2,  1.2 }
        },
        minable = { mining_particle = "stone-particle", mining_time = 1, result = "stone", count = 20 },
        loot = {
            { item = "stone", probability = 1, count_min = 10, count_max = 20 }
        },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 500,
        resistances = {
            { type = "fire",   percent = 100 },
            { type = "poison", percent = 100 }
        },
        pictures = {
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-01.png",
                width = 188,
                height = 127,
                scale = 0.5,
                shift = { -0.046875, 0.171875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-02.png",
                width = 195,
                height = 135,
                scale = 0.5,
                shift = { 0.44531200000000004, 0.125 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-03.png",
                width = 205,
                height = 132,
                scale = 0.5,
                shift = { 0.484375, 0.0546875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-04.png",
                width = 144,
                height = 142,
                scale = 0.5,
                shift = { 0.210938, 0.0390625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-05.png",
                width = 130,
                height = 107,
                scale = 0.5,
                shift = { 0.0234375, 0.226562 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-06.png",
                width = 165,
                height = 109,
                scale = 0.5,
                shift = { 0.15625, 0.226562 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-07.png",
                width = 150,
                height = 133,
                scale = 0.5,
                shift = { 0.257812, 0.148438 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-08.png",
                width = 156,
                height = 111,
                scale = 0.5,
                shift = { 0.0859375, 0.179688 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-09.png",
                width = 187,
                height = 120,
                scale = 0.5,
                shift = { 0.078125, 0.0859375 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-10.png",
                width = 225,
                height = 128,
                scale = 0.5,
                shift = { -0.15625, 0.0703125 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-11.png",
                width = 183,
                height = 144,
                scale = 0.5,
                shift = { 0.195312, 0.257812 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-12.png",
                width = 158,
                height = 138,
                scale = 0.5,
                shift = { 0.0390625, 0.15625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-13.png",
                width = 188,
                height = 150,
                scale = 0.5,
                shift = { 0.226562, 0.21875 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-14.png",
                width = 186,
                height = 160,
                scale = 0.5,
                shift = { 0.132812, 0.0625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-15.png",
                width = 181,
                height = 174,
                scale = 0.5,
                shift = { 0.304688, -0.09375 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-16.png",
                width = 212,
                height = 150,
                scale = 0.5,
                shift = { 0.335938, 0.117188 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-17.png",
                width = 155,
                height = 117,
                scale = 0.5,
                shift = { 0.25, 0.0390625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-18.png",
                width = 141,
                height = 128,
                scale = 0.5,
                shift = { 0.304688, 0.0390625 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-19.png",
                width = 176,
                height = 114,
                scale = 0.5,
                shift = { 0.390625, 0.0234375 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            },
            {
                filename = "__alien-biomes-graphics__/graphics/decorative/big-rock/big-rock-20.png",
                width = 120,
                height = 125,
                scale = 0.5,
                shift = { 0.148438, 0.03125 },
                tint = { a = 1, r = 0.9513725490196079, g = 0.9270588235294118, b = 0.899607843137255 }
            }
        },
        locale_key = "craft-deco-2-rock-024"
    }
}
