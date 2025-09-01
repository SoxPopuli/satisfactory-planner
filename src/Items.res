type item = {name: string, icon: string}

module Ore = {
  @deriving(accessors)
  type t = {name: string, icon: string}
}

@module({from: "./data/ores.json", with: {type_: "json"}})
external ores: array<Ore.t> = "default"
