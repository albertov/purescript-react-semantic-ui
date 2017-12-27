module SemanticUI.Button where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import buttonClass :: ReactClass ButtonProps
foreign import data ButtonOption :: Type
newtype ButtonProps = ButtonProps Foreign
buttonProps :: Options ButtonOption -> ButtonProps
buttonProps = ButtonProps <<< options
button :: Options ButtonOption -> Array ReactElement -> ReactElement
button opts = createElement buttonClass (buttonProps opts)
as :: Option ButtonOption (UnknownType)
as = opt "as" -- custom
active :: Option ButtonOption (Boolean)
active = opt "active"
animated :: Option ButtonOption (UnknownType)
animated = opt "animated" -- union
attached :: Option ButtonOption (UnknownType)
attached = opt "attached" -- union
basic :: Option ButtonOption (Boolean)
basic = opt "basic"
children :: Option ButtonOption (UnknownType)
children = opt "children" -- custom
circular :: Option ButtonOption (Boolean)
circular = opt "circular"
className :: Option ButtonOption (String)
className = opt "className"
color :: Option ButtonOption (UnknownType)
color = opt "color" -- enum
compact :: Option ButtonOption (Boolean)
compact = opt "compact"
content :: Option ButtonOption (UnknownType)
content = opt "content" -- custom
disabled :: Option ButtonOption (Boolean)
disabled = opt "disabled"
floated :: Option ButtonOption (UnknownType)
floated = opt "floated" -- enum
fluid :: Option ButtonOption (Boolean)
fluid = opt "fluid"
icon :: Option ButtonOption (UnknownType)
icon = opt "icon" -- custom
inverted :: Option ButtonOption (Boolean)
inverted = opt "inverted"
label :: Option ButtonOption (UnknownType)
label = opt "label" -- custom
labelPosition :: Option ButtonOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
loading :: Option ButtonOption (Boolean)
loading = opt "loading"
negative :: Option ButtonOption (Boolean)
negative = opt "negative"
onClick :: Option ButtonOption (EventHandlerOpt)
onClick = opt "onClick"
positive :: Option ButtonOption (Boolean)
positive = opt "positive"
primary :: Option ButtonOption (Boolean)
primary = opt "primary"
secondary :: Option ButtonOption (Boolean)
secondary = opt "secondary"
size :: Option ButtonOption (UnknownType)
size = opt "size" -- enum
tabIndex :: Option ButtonOption (UnknownType)
tabIndex = opt "tabIndex" -- union
toggle :: Option ButtonOption (Boolean)
toggle = opt "toggle"
