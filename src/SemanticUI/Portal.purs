module SemanticUI.Portal where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import portalClass :: ReactClass PortalProps
foreign import data PortalOption :: Type
newtype PortalProps = PortalProps Foreign
portalProps :: Options PortalOption -> PortalProps
portalProps = PortalProps <<< options
portal :: Options PortalOption -> Array ReactElement -> ReactElement
portal opts = createElement portalClass (portalProps opts)
children :: Option PortalOption (Node)
children = opt "children"
className :: Option PortalOption (String)
className = opt "className"
closeOnDocumentClick :: Option PortalOption (Boolean)
closeOnDocumentClick = opt "closeOnDocumentClick"
closeOnEscape :: Option PortalOption (Boolean)
closeOnEscape = opt "closeOnEscape"
closeOnPortalMouseLeave :: Option PortalOption (Boolean)
closeOnPortalMouseLeave = opt "closeOnPortalMouseLeave"
closeOnRootNodeClick :: Option PortalOption (Boolean)
closeOnRootNodeClick = opt "closeOnRootNodeClick"
closeOnTriggerBlur :: Option PortalOption (Boolean)
closeOnTriggerBlur = opt "closeOnTriggerBlur"
closeOnTriggerClick :: Option PortalOption (Boolean)
closeOnTriggerClick = opt "closeOnTriggerClick"
closeOnTriggerMouseLeave :: Option PortalOption (Boolean)
closeOnTriggerMouseLeave = opt "closeOnTriggerMouseLeave"
defaultOpen :: Option PortalOption (Boolean)
defaultOpen = opt "defaultOpen"
eventPool :: Option PortalOption (String)
eventPool = opt "eventPool"
mountNode :: Option PortalOption (UnknownType)
mountNode = opt "mountNode" -- any
mouseEnterDelay :: Option PortalOption (Number)
mouseEnterDelay = opt "mouseEnterDelay"
mouseLeaveDelay :: Option PortalOption (Number)
mouseLeaveDelay = opt "mouseLeaveDelay"
onClose :: Option PortalOption (EventHandlerOpt)
onClose = opt "onClose"
onMount :: Option PortalOption (EventHandlerOpt)
onMount = opt "onMount"
onOpen :: Option PortalOption (EventHandlerOpt)
onOpen = opt "onOpen"
onUnmount :: Option PortalOption (EventHandlerOpt)
onUnmount = opt "onUnmount"
open :: Option PortalOption (Boolean)
open = opt "open"
openOnTriggerClick :: Option PortalOption (Boolean)
openOnTriggerClick = opt "openOnTriggerClick"
openOnTriggerFocus :: Option PortalOption (Boolean)
openOnTriggerFocus = opt "openOnTriggerFocus"
openOnTriggerMouseEnter :: Option PortalOption (Boolean)
openOnTriggerMouseEnter = opt "openOnTriggerMouseEnter"
prepend :: Option PortalOption (Boolean)
prepend = opt "prepend"
trigger :: Option PortalOption (Node)
trigger = opt "trigger"
