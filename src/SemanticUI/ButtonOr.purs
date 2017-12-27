module SemanticUI.ButtonOr where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import buttonOrClass :: ReactClass ButtonOrProps
foreign import data ButtonOrOption :: Type
newtype ButtonOrProps = ButtonOrProps Foreign
buttonOrProps :: Options ButtonOrOption -> ButtonOrProps
buttonOrProps = ButtonOrProps <<< options
buttonOr :: Options ButtonOrOption -> Array ReactElement -> ReactElement
buttonOr opts = createElement buttonOrClass (buttonOrProps opts)
as :: Option ButtonOrOption (UnknownType)
as = opt "as" -- custom
className :: Option ButtonOrOption (String)
className = opt "className"
text :: Option ButtonOrOption (UnknownType)
text = opt "text" -- union
