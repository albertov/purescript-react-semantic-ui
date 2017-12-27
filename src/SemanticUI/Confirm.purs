module SemanticUI.Confirm where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import confirmClass :: ReactClass ConfirmProps
foreign import data ConfirmOption :: Type
newtype ConfirmProps = ConfirmProps Foreign
confirmProps :: Options ConfirmOption -> ConfirmProps
confirmProps = ConfirmProps <<< options
confirm :: Options ConfirmOption -> Array ReactElement -> ReactElement
confirm opts = createElement confirmClass (confirmProps opts)
cancelButton :: Option ConfirmOption (UnknownType)
cancelButton = opt "cancelButton" -- custom
confirmButton :: Option ConfirmOption (UnknownType)
confirmButton = opt "confirmButton" -- custom
content :: Option ConfirmOption (UnknownType)
content = opt "content" -- custom
header :: Option ConfirmOption (UnknownType)
header = opt "header" -- custom
onCancel :: Option ConfirmOption (EventHandlerOpt)
onCancel = opt "onCancel"
onConfirm :: Option ConfirmOption (EventHandlerOpt)
onConfirm = opt "onConfirm"
open :: Option ConfirmOption (Boolean)
open = opt "open"
