data:extend({
    {
        acceleration = 0.005,
        action = {
            {
                action_delivery = {
                    target_effects = {
                        {
                            entity_name = "ground-explosion",
                            type = "create-entity"
                        },
                        {
                            check_buildability = true,
                            entity_name = "small-scorchmark-tintable",
                            type = "create-entity"
                        },
                        {
                            entity_name = "explosion",
                            type = "create-explosion"
                        },
                        {
                            repeat_count = 1,
                            type = "invoke-tile-trigger"
                        },
                        {
                            decoratives_with_trigger_only = false,
                            from_render_layer = "decorative",
                            include_decals = false,
                            include_soft_decoratives = true,
                            invoke_decorative_trigger = true,
                            radius = 25,
                            to_render_layer = "object",
                            type = "destroy-decoratives"
                        }
                    },
                    type = "instant"
                },
                type = "direct"
            }
        },
        animation = {
            animation_speed = 0.25,
            draw_as_glow = true,
            filename = "__base__/graphics/entity/cliff-explosives/cliff-explosives.png",
            frame_count = 16,
            height = 30,
            hr_version = {
                animation_speed = 0.25,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cliff-explosives/hr-cliff-explosives.png",
                frame_count = 16,
                height = 58,
                line_length = 8,
                priority = "high",
                scale = 0.5,
                shift = {
                    0.015625,
                    -0.140625
                },
                width = 52
            },
            line_length = 8,
            priority = "high",
            shift = {
                0,
                -0.125
            },
            width = 26
        },
        flags = {
            "not-on-map"
        },
        name = "odb-explosives",
        shadow = {
            animation_speed = 0.25,
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/cliff-explosives/cliff-explosives-shadow.png",
            frame_count = 16,
            height = 22,
            hr_version = {
                animation_speed = 0.25,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/cliff-explosives/hr-cliff-explosives-shadow.png",
                frame_count = 16,
                height = 42,
                line_length = 8,
                priority = "high",
                scale = 0.5,
                shift = {
                    -0.109375,
                    0.125
                },
                width = 74
            },
            line_length = 8,
            priority = "high",
            shift = {
                -0.09375,
                0.125
            },
            width = 38
        },
        type = "projectile"
    }
})
