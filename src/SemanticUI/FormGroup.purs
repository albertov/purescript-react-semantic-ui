module SemanticUI.FormGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formGroupClass :: ReactClass FormGroupProps
foreign import data FormGroupOption :: Type
newtype FormGroupProps = FormGroupProps Foreign
formGroupProps :: Options FormGroupOption -> FormGroupProps
formGroupProps = FormGroupProps <<< options
formGroup :: Options FormGroupOption -> Array ReactElement -> ReactElement
formGroup opts = createElement formGroupClass (formGroupProps opts)
as :: Option FormGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option FormGroupOption (Node)
children = opt "children"
className :: Option FormGroupOption (String)
className = opt "className"
grouped :: Option FormGroupOption (UnknownType)
grouped = opt "grouped" -- custom
inline :: Option FormGroupOption (UnknownType)
inline = opt "inline" -- custom
unstackable :: Option FormGroupOption (Boolean)
unstackable = opt "unstackable"
widths :: Option FormGroupOption (UnknownType)
widths = opt "widths" -- enum
