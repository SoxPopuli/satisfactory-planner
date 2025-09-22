type rec component = {
  item: item,
  amount_per_min: float,
}

and recipe = {
  name: string,
  is_default: bool,
  components: array<component>,
  produced_per_min: float,
  produced_in: array<producer>,
}

and recipes = {
  default: recipe,
  alternate: array<recipe>,
}

and producer =
  | CraftingBench({work_units: int})
  | EquipmentWorkbench({work_units: int})
  | Constructor({processing_time_secs: int})
  | Assembler({processing_time_secs: int})

and kind =
  | Ore
  | Product(recipes)

and item = {
  name: string,
  icon: string,
  kind: kind,
}
