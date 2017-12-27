module SemanticUI.Form where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formClass :: ReactClass FormProps
foreign import data FormOption :: Type
newtype FormProps = FormProps Foreign
formProps :: Options FormOption -> FormProps
formProps = FormProps <<< options
form :: Options FormOption -> Array ReactElement -> ReactElement
form opts = createElement formClass (formProps opts)
as :: Option FormOption (UnknownType)
as = opt "as" -- custom
action :: Option FormOption (String)
action = opt "action"
children :: Option FormOption (Node)
children = opt "children"
className :: Option FormOption (String)
className = opt "className"
error :: Option FormOption (Boolean)
error = opt "error"
inverted :: Option FormOption (Boolean)
inverted = opt "inverted"
loading :: Option FormOption (Boolean)
loading = opt "loading"
onSubmit :: Option FormOption (EventHandlerOpt)
onSubmit = opt "onSubmit"
reply :: Option FormOption (Boolean)
reply = opt "reply"
size :: Option FormOption (UnknownType)
size = opt "size" -- enum
success :: Option FormOption (Boolean)
success = opt "success"
unstackable :: Option FormOption (Boolean)
unstackable = opt "unstackable"
warning :: Option FormOption (Boolean)
warning = opt "warning"
widths :: Option FormOption (UnknownType)
widths = opt "widths" -- enum
