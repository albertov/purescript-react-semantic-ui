module SemanticUI.ModalDescription where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import modalDescriptionClass :: ReactClass ModalDescriptionProps
foreign import data ModalDescriptionOption :: Type
newtype ModalDescriptionProps = ModalDescriptionProps Foreign
modalDescriptionProps :: Options ModalDescriptionOption -> ModalDescriptionProps
modalDescriptionProps = ModalDescriptionProps <<< options
modalDescription :: Options ModalDescriptionOption -> Array ReactElement -> ReactElement
modalDescription opts = createElement modalDescriptionClass (modalDescriptionProps opts)
as :: Option ModalDescriptionOption (UnknownType)
as = opt "as" -- custom
children :: Option ModalDescriptionOption (Node)
children = opt "children"
className :: Option ModalDescriptionOption (String)
className = opt "className"
content :: Option ModalDescriptionOption (UnknownType)
content = opt "content" -- custom
