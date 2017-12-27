module SemanticUI.ButtonGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import buttonGroupClass :: ReactClass ButtonGroupProps
foreign import data ButtonGroupOption :: Type
newtype ButtonGroupProps = ButtonGroupProps Foreign
buttonGroupProps :: Options ButtonGroupOption -> ButtonGroupProps
buttonGroupProps = ButtonGroupProps <<< options
buttonGroup :: Options ButtonGroupOption -> Array ReactElement -> ReactElement
buttonGroup opts = createElement buttonGroupClass (buttonGroupProps opts)
as :: Option ButtonGroupOption (UnknownType)
as = opt "as" -- custom
attached :: Option ButtonGroupOption (UnknownType)
attached = opt "attached" -- union
basic :: Option ButtonGroupOption (Boolean)
basic = opt "basic"
buttons :: Option ButtonGroupOption (UnknownType)
buttons = opt "buttons" -- custom
children :: Option ButtonGroupOption (Node)
children = opt "children"
className :: Option ButtonGroupOption (String)
className = opt "className"
color :: Option ButtonGroupOption (UnknownType)
color = opt "color" -- enum
compact :: Option ButtonGroupOption (Boolean)
compact = opt "compact"
content :: Option ButtonGroupOption (UnknownType)
content = opt "content" -- custom
floated :: Option ButtonGroupOption (UnknownType)
floated = opt "floated" -- enum
fluid :: Option ButtonGroupOption (Boolean)
fluid = opt "fluid"
icon :: Option ButtonGroupOption (Boolean)
icon = opt "icon"
inverted :: Option ButtonGroupOption (Boolean)
inverted = opt "inverted"
labeled :: Option ButtonGroupOption (Boolean)
labeled = opt "labeled"
negative :: Option ButtonGroupOption (Boolean)
negative = opt "negative"
positive :: Option ButtonGroupOption (Boolean)
positive = opt "positive"
primary :: Option ButtonGroupOption (Boolean)
primary = opt "primary"
secondary :: Option ButtonGroupOption (Boolean)
secondary = opt "secondary"
size :: Option ButtonGroupOption (UnknownType)
size = opt "size" -- enum
toggle :: Option ButtonGroupOption (Boolean)
toggle = opt "toggle"
vertical :: Option ButtonGroupOption (Boolean)
vertical = opt "vertical"
widths :: Option ButtonGroupOption (UnknownType)
widths = opt "widths" -- enum
