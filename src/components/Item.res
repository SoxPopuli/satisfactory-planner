type classes = {
  container: string,
  image: string,
  text: string,
}
@module("./item.module.scss")
external classes: classes = "default"

@react.component
let make = (~item: Items.item) => {
  <div className={classes.container}>
    <img className={classes.image} src={`items/${item.icon}`} alt={item.name} title={item.name} />
    <p className={classes.text}> {item.name->React.string} </p>
  </div>
}
