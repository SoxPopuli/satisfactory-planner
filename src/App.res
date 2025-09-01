@module("./assets/rescript-logo.svg")
external rescript: string = "default"

@module("./assets/vite.svg")
external vite: string = "default"

@react.component
let make = () => {
  let ores = Items.ores->Array.map(x => <Item item={(x :> Items.item)} />)

  <div className="flex flex-wrap"
  > {ores->React.array} </div>
}
