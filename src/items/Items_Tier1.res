open Items_Types
open Items_Ores

let iron_plate = {
  name: "Iron Plate",
  icon: "",
  kind: Product({
    default: {
      name: "Iron Plate",
      is_default: true,
      components: [{item: ironOre, amount_per_min: 30.0}],
      produced_in: [Constructor({processing_time_secs: 6})],
      produced_per_min: 20.0,
    },
    alternate: [],
  }),
}
