module SemanticUI.FormField where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formFieldClass :: ReactClass FormFieldProps
foreign import data FormFieldOption :: Type
newtype FormFieldProps = FormFieldProps Foreign
formFieldProps :: Options FormFieldOption -> FormFieldProps
formFieldProps = FormFieldProps <<< options
formField :: Options FormFieldOption -> Array ReactElement -> ReactElement
formField opts = createElement formFieldClass (formFieldProps opts)
as :: Option FormFieldOption (UnknownType)
as = opt "as" -- custom
children :: Option FormFieldOption (Node)
children = opt "children"
className :: Option FormFieldOption (String)
className = opt "className"
content :: Option FormFieldOption (UnknownType)
content = opt "content" -- custom
control :: Option FormFieldOption (UnknownType)
control = opt "control" -- custom
disabled :: Option FormFieldOption (Boolean)
disabled = opt "disabled"
error :: Option FormFieldOption (Boolean)
error = opt "error"
inline :: Option FormFieldOption (Boolean)
inline = opt "inline"
label :: Option FormFieldOption (UnknownType)
label = opt "label" -- union
required :: Option FormFieldOption (Boolean)
required = opt "required"
type' :: Option FormFieldOption (UnknownType)
type' = opt "type" -- custom
width :: Option FormFieldOption (UnknownType)
width = opt "width" -- enum
