module SemanticUI.MessageList where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import messageListClass :: ReactClass MessageListProps
foreign import data MessageListOption :: Type
newtype MessageListProps = MessageListProps Foreign
messageListProps :: Options MessageListOption -> MessageListProps
messageListProps = MessageListProps <<< options
messageList :: Options MessageListOption -> Array ReactElement -> ReactElement
messageList opts = createElement messageListClass (messageListProps opts)
as :: Option MessageListOption (UnknownType)
as = opt "as" -- custom
children :: Option MessageListOption (Node)
children = opt "children"
className :: Option MessageListOption (String)
className = opt "className"
items :: Option MessageListOption (UnknownType)
items = opt "items" -- custom
