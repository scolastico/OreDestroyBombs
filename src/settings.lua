data:extend({
    {
        type = "int-setting",
        name = "odb-wait-ticks",
        setting_type = "runtime-global",
        default_value = 2,
        minimum_value = 1
    },
    {
        type = "int-setting",
        name = "odb-tiles-at-same-time",
        setting_type = "runtime-global",
        default_value = 4,
        minimum_value = 1
    },
    {
        type = "bool-setting",
        name = "odb-instant",
        setting_type = "runtime-global",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "odb-effects",
        setting_type = "runtime-global",
        default_value = true
    }
})