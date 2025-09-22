@module("./assets/rescript-logo.svg")
external rescript: string = "default"

@module("./assets/vite.svg")
external vite: string = "default"

@react.component
let make = () => {
  let ores = Items.Ores.all

  let items =
    ores
    ->Array.map(x => <Item key={x.name} item=x />)
    ->React.array

  <div
    style={
      display: "flex",
      flexDirection: "row",
      flexWrap: "wrap",
    }>
    {items}
  </div>
}
