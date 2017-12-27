module SemanticUI.FormSelect where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formSelectClass :: ReactClass FormSelectProps
foreign import data FormSelectOption :: Type
newtype FormSelectProps = FormSelectProps Foreign
formSelectProps :: Options FormSelectOption -> FormSelectProps
formSelectProps = FormSelectProps <<< options
formSelect :: Options FormSelectOption -> Array ReactElement -> ReactElement
formSelect opts = createElement formSelectClass (formSelectProps opts)
as :: Option FormSelectOption (UnknownType)
as = opt "as" -- custom
control :: Option FormSelectOption (UnknownType)
control = opt "control" -- custom
