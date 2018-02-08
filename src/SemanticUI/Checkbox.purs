module SemanticUI.Checkbox where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import checkboxClass :: ReactClass CheckboxProps
foreign import data CheckboxOption :: Type
newtype CheckboxProps = CheckboxProps Foreign
checkboxProps :: Options CheckboxOption -> CheckboxProps
checkboxProps = CheckboxProps <<< options
checkbox :: Options CheckboxOption -> Array ReactElement -> ReactElement
checkbox opts = createElement checkboxClass (checkboxProps opts)
as :: Option CheckboxOption (UnknownType)
as = opt "as" -- custom
checked :: Option CheckboxOption (Boolean)
checked = opt "checked"
className :: Option CheckboxOption (String)
className = opt "className"
defaultChecked :: Option CheckboxOption (Boolean)
defaultChecked = opt "defaultChecked"
defaultIndeterminate :: Option CheckboxOption (Boolean)
defaultIndeterminate = opt "defaultIndeterminate"
disabled :: Option CheckboxOption (Boolean)
disabled = opt "disabled"
fitted :: Option CheckboxOption (Boolean)
fitted = opt "fitted"
id :: Option CheckboxOption (UnknownType)
id = opt "id" -- union
indeterminate :: Option CheckboxOption (Boolean)
indeterminate = opt "indeterminate"
label :: Option CheckboxOption (UnknownType)
label = opt "label" -- custom
name :: Option CheckboxOption (String)
name = opt "name"
onChange :: Option CheckboxOption (EventHandlerOpt)
onChange = opt "onChange"
onClick :: Option CheckboxOption (EventHandlerOpt)
onClick = opt "onClick"
onMouseDown :: Option CheckboxOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
radio :: Option CheckboxOption (UnknownType)
radio = opt "radio" -- custom
readOnly :: Option CheckboxOption (Boolean)
readOnly = opt "readOnly"
slider :: Option CheckboxOption (UnknownType)
slider = opt "slider" -- custom
tabIndex :: Option CheckboxOption (UnknownType)
tabIndex = opt "tabIndex" -- union
toggle :: Option CheckboxOption (UnknownType)
toggle = opt "toggle" -- custom
type' :: Option CheckboxOption (UnknownType)
type' = opt "type" -- enum
value :: Option CheckboxOption (UnknownType)
value = opt "value" -- union
