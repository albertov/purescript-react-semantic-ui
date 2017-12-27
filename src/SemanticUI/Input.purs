module SemanticUI.Input where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import inputClass :: ReactClass InputProps
foreign import data InputOption :: Type
newtype InputProps = InputProps Foreign
inputProps :: Options InputOption -> InputProps
inputProps = InputProps <<< options
inputOpts :: Options InputOption -> Array ReactElement -> ReactElement
inputOpts opts = createElement inputClass (inputProps opts)
as :: Option InputOption (UnknownType)
as = opt "as" -- custom
action :: Option InputOption (UnknownType)
action = opt "action" -- union
actionPosition :: Option InputOption (UnknownType)
actionPosition = opt "actionPosition" -- enum
children :: Option InputOption (Node)
children = opt "children"
className :: Option InputOption (String)
className = opt "className"
disabled :: Option InputOption (Boolean)
disabled = opt "disabled"
error :: Option InputOption (Boolean)
error = opt "error"
fluid :: Option InputOption (Boolean)
fluid = opt "fluid"
focus :: Option InputOption (Boolean)
focus = opt "focus"
icon :: Option InputOption (UnknownType)
icon = opt "icon" -- union
iconPosition :: Option InputOption (UnknownType)
iconPosition = opt "iconPosition" -- enum
input :: Option InputOption (UnknownType)
input = opt "input" -- custom
inverted :: Option InputOption (Boolean)
inverted = opt "inverted"
label :: Option InputOption (UnknownType)
label = opt "label" -- custom
labelPosition :: Option InputOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
loading :: Option InputOption (Boolean)
loading = opt "loading"
onChange :: Option InputOption (EventHandlerOpt)
onChange = opt "onChange"
size :: Option InputOption (UnknownType)
size = opt "size" -- enum
tabIndex :: Option InputOption (UnknownType)
tabIndex = opt "tabIndex" -- union
transparent :: Option InputOption (Boolean)
transparent = opt "transparent"
type' :: Option InputOption (String)
type' = opt "type"
