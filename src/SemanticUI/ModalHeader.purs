module SemanticUI.ModalHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import modalHeaderClass :: ReactClass ModalHeaderProps
foreign import data ModalHeaderOption :: Type
newtype ModalHeaderProps = ModalHeaderProps Foreign
modalHeaderProps :: Options ModalHeaderOption -> ModalHeaderProps
modalHeaderProps = ModalHeaderProps <<< options
modalHeader :: Options ModalHeaderOption -> Array ReactElement -> ReactElement
modalHeader opts = createElement modalHeaderClass (modalHeaderProps opts)
as :: Option ModalHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option ModalHeaderOption (Node)
children = opt "children"
className :: Option ModalHeaderOption (String)
className = opt "className"
content :: Option ModalHeaderOption (UnknownType)
content = opt "content" -- custom
