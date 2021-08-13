data:extend({
  {
    type = "capsule",
    name = "odb-explosives",
    icon = "__OreDestroyBombs__/graphics/explosives-x64.png",
    icon_size = 64,
    subgroup = "terrain",
    order = "c[cliff-explosives]-b[odb-explosives]",
    stack_size = 10,
    capsule_action = {
      type = "throw",
      attack_parameters = {
        type = "projectile",
        range = 25,
        cooldown = 60,
        projectile_creation_distance = 0.6,
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "odb-explosives",
              starting_speed = 0.3,
              type = "projectile"
            },
            type = "direct",
            target_type = "position"
          },
          category = "odb-explosives"
        }
      }
    }
  }
})
