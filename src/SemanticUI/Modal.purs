module SemanticUI.Modal where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import modalClass :: ReactClass ModalProps
foreign import data ModalOption :: Type
newtype ModalProps = ModalProps Foreign
modalProps :: Options ModalOption -> ModalProps
modalProps = ModalProps <<< options
modal :: Options ModalOption -> Array ReactElement -> ReactElement
modal opts = createElement modalClass (modalProps opts)
as :: Option ModalOption (UnknownType)
as = opt "as" -- custom
actions :: Option ModalOption (UnknownType)
actions = opt "actions" -- custom
basic :: Option ModalOption (Boolean)
basic = opt "basic"
children :: Option ModalOption (Node)
children = opt "children"
className :: Option ModalOption (String)
className = opt "className"
closeIcon :: Option ModalOption (UnknownType)
closeIcon = opt "closeIcon" -- union
closeOnDimmerClick :: Option ModalOption (Boolean)
closeOnDimmerClick = opt "closeOnDimmerClick"
closeOnDocumentClick :: Option ModalOption (Boolean)
closeOnDocumentClick = opt "closeOnDocumentClick"
content :: Option ModalOption (UnknownType)
content = opt "content" -- custom
defaultOpen :: Option ModalOption (Boolean)
defaultOpen = opt "defaultOpen"
dimmer :: Option ModalOption (UnknownType)
dimmer = opt "dimmer" -- union
eventPool :: Option ModalOption (String)
eventPool = opt "eventPool"
header :: Option ModalOption (UnknownType)
header = opt "header" -- custom
mountNode :: Option ModalOption (UnknownType)
mountNode = opt "mountNode" -- any
onActionClick :: Option ModalOption (EventHandlerOpt)
onActionClick = opt "onActionClick"
onClose :: Option ModalOption (EventHandlerOpt)
onClose = opt "onClose"
onMount :: Option ModalOption (EventHandlerOpt)
onMount = opt "onMount"
onOpen :: Option ModalOption (EventHandlerOpt)
onOpen = opt "onOpen"
onUnmount :: Option ModalOption (EventHandlerOpt)
onUnmount = opt "onUnmount"
open :: Option ModalOption (Boolean)
open = opt "open"
size :: Option ModalOption (UnknownType)
size = opt "size" -- enum
style :: Option ModalOption (UnknownType)
style = opt "style" -- object
trigger :: Option ModalOption (Node)
trigger = opt "trigger"
