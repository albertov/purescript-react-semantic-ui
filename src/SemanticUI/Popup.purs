module SemanticUI.Popup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import popupClass :: ReactClass PopupProps
foreign import data PopupOption :: Type
newtype PopupProps = PopupProps Foreign
popupProps :: Options PopupOption -> PopupProps
popupProps = PopupProps <<< options
popup :: Options PopupOption -> Array ReactElement -> ReactElement
popup opts = createElement popupClass (popupProps opts)
as :: Option PopupOption (UnknownType)
as = opt "as" -- custom
basic :: Option PopupOption (Boolean)
basic = opt "basic"
children :: Option PopupOption (Node)
children = opt "children"
className :: Option PopupOption (String)
className = opt "className"
content :: Option PopupOption (UnknownType)
content = opt "content" -- custom
flowing :: Option PopupOption (Boolean)
flowing = opt "flowing"
header :: Option PopupOption (UnknownType)
header = opt "header" -- custom
hideOnScroll :: Option PopupOption (Boolean)
hideOnScroll = opt "hideOnScroll"
hoverable :: Option PopupOption (Boolean)
hoverable = opt "hoverable"
inverted :: Option PopupOption (Boolean)
inverted = opt "inverted"
offset :: Option PopupOption (Number)
offset = opt "offset"
on :: Option PopupOption (UnknownType)
on = opt "on" -- union
onClose :: Option PopupOption (EventHandlerOpt)
onClose = opt "onClose"
onMount :: Option PopupOption (EventHandlerOpt)
onMount = opt "onMount"
onOpen :: Option PopupOption (EventHandlerOpt)
onOpen = opt "onOpen"
onUnmount :: Option PopupOption (EventHandlerOpt)
onUnmount = opt "onUnmount"
position :: Option PopupOption (UnknownType)
position = opt "position" -- enum
size :: Option PopupOption (UnknownType)
size = opt "size" -- enum
style :: Option PopupOption (UnknownType)
style = opt "style" -- object
trigger :: Option PopupOption (Node)
trigger = opt "trigger"
wide :: Option PopupOption (UnknownType)
wide = opt "wide" -- union
