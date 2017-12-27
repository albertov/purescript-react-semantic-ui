module SemanticUI.ButtonContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import buttonContentClass :: ReactClass ButtonContentProps
foreign import data ButtonContentOption :: Type
newtype ButtonContentProps = ButtonContentProps Foreign
buttonContentProps :: Options ButtonContentOption -> ButtonContentProps
buttonContentProps = ButtonContentProps <<< options
buttonContent :: Options ButtonContentOption -> Array ReactElement -> ReactElement
buttonContent opts = createElement buttonContentClass (buttonContentProps opts)
as :: Option ButtonContentOption (UnknownType)
as = opt "as" -- custom
children :: Option ButtonContentOption (Node)
children = opt "children"
className :: Option ButtonContentOption (String)
className = opt "className"
content :: Option ButtonContentOption (UnknownType)
content = opt "content" -- custom
hidden :: Option ButtonContentOption (Boolean)
hidden = opt "hidden"
visible :: Option ButtonContentOption (Boolean)
visible = opt "visible"
