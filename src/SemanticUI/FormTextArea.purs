module SemanticUI.FormTextArea where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formTextAreaClass :: ReactClass FormTextAreaProps
foreign import data FormTextAreaOption :: Type
newtype FormTextAreaProps = FormTextAreaProps Foreign
formTextAreaProps :: Options FormTextAreaOption -> FormTextAreaProps
formTextAreaProps = FormTextAreaProps <<< options
formTextArea :: Options FormTextAreaOption -> Array ReactElement -> ReactElement
formTextArea opts = createElement formTextAreaClass (formTextAreaProps opts)
as :: Option FormTextAreaOption (UnknownType)
as = opt "as" -- custom
control :: Option FormTextAreaOption (UnknownType)
control = opt "control" -- custom
