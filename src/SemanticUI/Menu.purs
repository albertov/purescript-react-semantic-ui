module SemanticUI.Menu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import menuClass :: ReactClass MenuProps
foreign import data MenuOption :: Type
newtype MenuProps = MenuProps Foreign
menuProps :: Options MenuOption -> MenuProps
menuProps = MenuProps <<< options
menu :: Options MenuOption -> Array ReactElement -> ReactElement
menu opts = createElement menuClass (menuProps opts)
as :: Option MenuOption (UnknownType)
as = opt "as" -- custom
activeIndex :: Option MenuOption (UnknownType)
activeIndex = opt "activeIndex" -- union
attached :: Option MenuOption (UnknownType)
attached = opt "attached" -- union
borderless :: Option MenuOption (Boolean)
borderless = opt "borderless"
children :: Option MenuOption (Node)
children = opt "children"
className :: Option MenuOption (String)
className = opt "className"
color :: Option MenuOption (UnknownType)
color = opt "color" -- enum
compact :: Option MenuOption (Boolean)
compact = opt "compact"
defaultActiveIndex :: Option MenuOption (UnknownType)
defaultActiveIndex = opt "defaultActiveIndex" -- union
fixed :: Option MenuOption (UnknownType)
fixed = opt "fixed" -- enum
floated :: Option MenuOption (UnknownType)
floated = opt "floated" -- union
fluid :: Option MenuOption (Boolean)
fluid = opt "fluid"
icon :: Option MenuOption (UnknownType)
icon = opt "icon" -- union
inverted :: Option MenuOption (Boolean)
inverted = opt "inverted"
items :: Option MenuOption (UnknownType)
items = opt "items" -- custom
onItemClick :: Option MenuOption (UnknownType)
onItemClick = opt "onItemClick" -- custom
pagination :: Option MenuOption (Boolean)
pagination = opt "pagination"
pointing :: Option MenuOption (Boolean)
pointing = opt "pointing"
secondary :: Option MenuOption (Boolean)
secondary = opt "secondary"
size :: Option MenuOption (UnknownType)
size = opt "size" -- enum
stackable :: Option MenuOption (Boolean)
stackable = opt "stackable"
tabular :: Option MenuOption (UnknownType)
tabular = opt "tabular" -- union
text :: Option MenuOption (Boolean)
text = opt "text"
vertical :: Option MenuOption (Boolean)
vertical = opt "vertical"
widths :: Option MenuOption (UnknownType)
widths = opt "widths" -- enum
