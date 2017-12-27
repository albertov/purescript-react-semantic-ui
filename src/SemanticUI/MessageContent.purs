module SemanticUI.MessageContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import messageContentClass :: ReactClass MessageContentProps
foreign import data MessageContentOption :: Type
newtype MessageContentProps = MessageContentProps Foreign
messageContentProps :: Options MessageContentOption -> MessageContentProps
messageContentProps = MessageContentProps <<< options
messageContent :: Options MessageContentOption -> Array ReactElement -> ReactElement
messageContent opts = createElement messageContentClass (messageContentProps opts)
as :: Option MessageContentOption (UnknownType)
as = opt "as" -- custom
children :: Option MessageContentOption (Node)
children = opt "children"
className :: Option MessageContentOption (String)
className = opt "className"
content :: Option MessageContentOption (UnknownType)
content = opt "content" -- custom
