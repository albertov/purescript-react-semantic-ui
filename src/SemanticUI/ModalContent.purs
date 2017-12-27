module SemanticUI.ModalContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import modalContentClass :: ReactClass ModalContentProps
foreign import data ModalContentOption :: Type
newtype ModalContentProps = ModalContentProps Foreign
modalContentProps :: Options ModalContentOption -> ModalContentProps
modalContentProps = ModalContentProps <<< options
modalContent :: Options ModalContentOption -> Array ReactElement -> ReactElement
modalContent opts = createElement modalContentClass (modalContentProps opts)
as :: Option ModalContentOption (UnknownType)
as = opt "as" -- custom
children :: Option ModalContentOption (Node)
children = opt "children"
className :: Option ModalContentOption (String)
className = opt "className"
content :: Option ModalContentOption (UnknownType)
content = opt "content" -- custom
image :: Option ModalContentOption (Boolean)
image = opt "image"
scrolling :: Option ModalContentOption (Boolean)
scrolling = opt "scrolling"
