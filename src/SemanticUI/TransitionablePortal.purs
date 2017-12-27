module SemanticUI.TransitionablePortal where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import transitionablePortalClass :: ReactClass TransitionablePortalProps
foreign import data TransitionablePortalOption :: Type
newtype TransitionablePortalProps = TransitionablePortalProps Foreign
transitionablePortalProps :: Options TransitionablePortalOption -> TransitionablePortalProps
transitionablePortalProps = TransitionablePortalProps <<< options
transitionablePortal :: Options TransitionablePortalOption -> Array ReactElement -> ReactElement
transitionablePortal opts = createElement transitionablePortalClass (transitionablePortalProps opts)
children :: Option TransitionablePortalOption (Node)
children = opt "children"
onClose :: Option TransitionablePortalOption (EventHandlerOpt)
onClose = opt "onClose"
onHide :: Option TransitionablePortalOption (EventHandlerOpt)
onHide = opt "onHide"
onOpen :: Option TransitionablePortalOption (EventHandlerOpt)
onOpen = opt "onOpen"
onStart :: Option TransitionablePortalOption (EventHandlerOpt)
onStart = opt "onStart"
open :: Option TransitionablePortalOption (Boolean)
open = opt "open"
transition :: Option TransitionablePortalOption (UnknownType)
transition = opt "transition" -- object
