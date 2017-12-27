module SemanticUI.FormRadio where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formRadioClass :: ReactClass FormRadioProps
foreign import data FormRadioOption :: Type
newtype FormRadioProps = FormRadioProps Foreign
formRadioProps :: Options FormRadioOption -> FormRadioProps
formRadioProps = FormRadioProps <<< options
formRadio :: Options FormRadioOption -> Array ReactElement -> ReactElement
formRadio opts = createElement formRadioClass (formRadioProps opts)
as :: Option FormRadioOption (UnknownType)
as = opt "as" -- custom
control :: Option FormRadioOption (UnknownType)
control = opt "control" -- custom
