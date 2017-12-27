module SemanticUI.FormCheckbox where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formCheckboxClass :: ReactClass FormCheckboxProps
foreign import data FormCheckboxOption :: Type
newtype FormCheckboxProps = FormCheckboxProps Foreign
formCheckboxProps :: Options FormCheckboxOption -> FormCheckboxProps
formCheckboxProps = FormCheckboxProps <<< options
formCheckbox :: Options FormCheckboxOption -> Array ReactElement -> ReactElement
formCheckbox opts = createElement formCheckboxClass (formCheckboxProps opts)
as :: Option FormCheckboxOption (UnknownType)
as = opt "as" -- custom
control :: Option FormCheckboxOption (UnknownType)
control = opt "control" -- custom
