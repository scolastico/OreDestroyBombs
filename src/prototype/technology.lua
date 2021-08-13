data:extend({
  {
    type = "technology",
    name = "odb-explosives",
    icon = "__OreDestroyBombs__/graphics/explosives-x64.png",
    icon_size = 64,
    prerequisites = {"cliff-explosives", "military-science-pack"},
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "odb-explosives"
      }
    },
    order = "b-d"
  }
})
