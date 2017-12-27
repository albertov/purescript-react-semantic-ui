module SemanticUI.MessageItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import messageItemClass :: ReactClass MessageItemProps
foreign import data MessageItemOption :: Type
newtype MessageItemProps = MessageItemProps Foreign
messageItemProps :: Options MessageItemOption -> MessageItemProps
messageItemProps = MessageItemProps <<< options
messageItem :: Options MessageItemOption -> Array ReactElement -> ReactElement
messageItem opts = createElement messageItemClass (messageItemProps opts)
as :: Option MessageItemOption (UnknownType)
as = opt "as" -- custom
children :: Option MessageItemOption (Node)
children = opt "children"
className :: Option MessageItemOption (String)
className = opt "className"
content :: Option MessageItemOption (UnknownType)
content = opt "content" -- custom
