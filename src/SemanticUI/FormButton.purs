module SemanticUI.FormButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formButtonClass :: ReactClass FormButtonProps
foreign import data FormButtonOption :: Type
newtype FormButtonProps = FormButtonProps Foreign
formButtonProps :: Options FormButtonOption -> FormButtonProps
formButtonProps = FormButtonProps <<< options
formButton :: Options FormButtonOption -> Array ReactElement -> ReactElement
formButton opts = createElement formButtonClass (formButtonProps opts)
as :: Option FormButtonOption (UnknownType)
as = opt "as" -- custom
control :: Option FormButtonOption (UnknownType)
control = opt "control" -- custom
