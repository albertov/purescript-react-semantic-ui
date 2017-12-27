module SemanticUI.CommentContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentContentClass :: ReactClass CommentContentProps
foreign import data CommentContentOption :: Type
newtype CommentContentProps = CommentContentProps Foreign
commentContentProps :: Options CommentContentOption -> CommentContentProps
commentContentProps = CommentContentProps <<< options
commentContent :: Options CommentContentOption -> Array ReactElement -> ReactElement
commentContent opts = createElement commentContentClass (commentContentProps opts)
as :: Option CommentContentOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentContentOption (Node)
children = opt "children"
className :: Option CommentContentOption (String)
className = opt "className"
content :: Option CommentContentOption (UnknownType)
content = opt "content" -- custom
