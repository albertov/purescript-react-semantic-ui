module SemanticUI.FormInput where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formInputClass :: ReactClass FormInputProps
foreign import data FormInputOption :: Type
newtype FormInputProps = FormInputProps Foreign
formInputProps :: Options FormInputOption -> FormInputProps
formInputProps = FormInputProps <<< options
formInput :: Options FormInputOption -> Array ReactElement -> ReactElement
formInput opts = createElement formInputClass (formInputProps opts)
as :: Option FormInputOption (UnknownType)
as = opt "as" -- custom
control :: Option FormInputOption (UnknownType)
control = opt "control" -- custom
