module SemanticUI.MessageHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import messageHeaderClass :: ReactClass MessageHeaderProps
foreign import data MessageHeaderOption :: Type
newtype MessageHeaderProps = MessageHeaderProps Foreign
messageHeaderProps :: Options MessageHeaderOption -> MessageHeaderProps
messageHeaderProps = MessageHeaderProps <<< options
messageHeader :: Options MessageHeaderOption -> Array ReactElement -> ReactElement
messageHeader opts = createElement messageHeaderClass (messageHeaderProps opts)
as :: Option MessageHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option MessageHeaderOption (Node)
children = opt "children"
className :: Option MessageHeaderOption (String)
className = opt "className"
content :: Option MessageHeaderOption (UnknownType)
content = opt "content" -- custom
