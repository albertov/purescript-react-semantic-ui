module SemanticUI.ModalActions where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import modalActionsClass :: ReactClass ModalActionsProps
foreign import data ModalActionsOption :: Type
newtype ModalActionsProps = ModalActionsProps Foreign
modalActionsProps :: Options ModalActionsOption -> ModalActionsProps
modalActionsProps = ModalActionsProps <<< options
modalActions :: Options ModalActionsOption -> Array ReactElement -> ReactElement
modalActions opts = createElement modalActionsClass (modalActionsProps opts)
as :: Option ModalActionsOption (UnknownType)
as = opt "as" -- custom
actions :: Option ModalActionsOption (UnknownType)
actions = opt "actions" -- custom
children :: Option ModalActionsOption (Node)
children = opt "children"
className :: Option ModalActionsOption (String)
className = opt "className"
content :: Option ModalActionsOption (UnknownType)
content = opt "content" -- custom
onActionClick :: Option ModalActionsOption (UnknownType)
onActionClick = opt "onActionClick" -- custom
