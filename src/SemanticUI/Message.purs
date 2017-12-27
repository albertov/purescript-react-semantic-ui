module SemanticUI.Message where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import messageClass :: ReactClass MessageProps
foreign import data MessageOption :: Type
newtype MessageProps = MessageProps Foreign
messageProps :: Options MessageOption -> MessageProps
messageProps = MessageProps <<< options
message :: Options MessageOption -> Array ReactElement -> ReactElement
message opts = createElement messageClass (messageProps opts)
as :: Option MessageOption (UnknownType)
as = opt "as" -- custom
attached :: Option MessageOption (UnknownType)
attached = opt "attached" -- union
children :: Option MessageOption (Node)
children = opt "children"
className :: Option MessageOption (String)
className = opt "className"
color :: Option MessageOption (UnknownType)
color = opt "color" -- enum
compact :: Option MessageOption (Boolean)
compact = opt "compact"
content :: Option MessageOption (UnknownType)
content = opt "content" -- custom
error :: Option MessageOption (Boolean)
error = opt "error"
floating :: Option MessageOption (Boolean)
floating = opt "floating"
header :: Option MessageOption (UnknownType)
header = opt "header" -- custom
hidden :: Option MessageOption (Boolean)
hidden = opt "hidden"
icon :: Option MessageOption (UnknownType)
icon = opt "icon" -- union
info :: Option MessageOption (Boolean)
info = opt "info"
list :: Option MessageOption (UnknownType)
list = opt "list" -- custom
negative :: Option MessageOption (Boolean)
negative = opt "negative"
onDismiss :: Option MessageOption (EventHandlerOpt)
onDismiss = opt "onDismiss"
positive :: Option MessageOption (Boolean)
positive = opt "positive"
size :: Option MessageOption (UnknownType)
size = opt "size" -- enum
success :: Option MessageOption (Boolean)
success = opt "success"
visible :: Option MessageOption (Boolean)
visible = opt "visible"
warning :: Option MessageOption (Boolean)
warning = opt "warning"
