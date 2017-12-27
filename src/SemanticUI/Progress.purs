module SemanticUI.Progress where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import progressClass :: ReactClass ProgressProps
foreign import data ProgressOption :: Type
newtype ProgressProps = ProgressProps Foreign
progressProps :: Options ProgressOption -> ProgressProps
progressProps = ProgressProps <<< options
progress :: Options ProgressOption -> Array ReactElement -> ReactElement
progress opts = createElement progressClass (progressProps opts)
as :: Option ProgressOption (UnknownType)
as = opt "as" -- custom
active :: Option ProgressOption (Boolean)
active = opt "active"
attached :: Option ProgressOption (UnknownType)
attached = opt "attached" -- enum
autoSuccess :: Option ProgressOption (Boolean)
autoSuccess = opt "autoSuccess"
children :: Option ProgressOption (Node)
children = opt "children"
className :: Option ProgressOption (String)
className = opt "className"
color :: Option ProgressOption (UnknownType)
color = opt "color" -- enum
content :: Option ProgressOption (UnknownType)
content = opt "content" -- custom
disabled :: Option ProgressOption (Boolean)
disabled = opt "disabled"
error :: Option ProgressOption (Boolean)
error = opt "error"
indicating :: Option ProgressOption (Boolean)
indicating = opt "indicating"
inverted :: Option ProgressOption (Boolean)
inverted = opt "inverted"
label :: Option ProgressOption (UnknownType)
label = opt "label" -- custom
percent :: Option ProgressOption (UnknownType)
percent = opt "percent" -- custom
precision :: Option ProgressOption (Number)
precision = opt "precision"
progress_ :: Option ProgressOption (UnknownType)
progress_ = opt "progress" -- union
size :: Option ProgressOption (UnknownType)
size = opt "size" -- enum
success :: Option ProgressOption (Boolean)
success = opt "success"
total :: Option ProgressOption (UnknownType)
total = opt "total" -- custom
value :: Option ProgressOption (UnknownType)
value = opt "value" -- custom
warning :: Option ProgressOption (Boolean)
warning = opt "warning"
