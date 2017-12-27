module SemanticUI.CommentAction where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentActionClass :: ReactClass CommentActionProps
foreign import data CommentActionOption :: Type
newtype CommentActionProps = CommentActionProps Foreign
commentActionProps :: Options CommentActionOption -> CommentActionProps
commentActionProps = CommentActionProps <<< options
commentAction :: Options CommentActionOption -> Array ReactElement -> ReactElement
commentAction opts = createElement commentActionClass (commentActionProps opts)
as :: Option CommentActionOption (UnknownType)
as = opt "as" -- custom
active :: Option CommentActionOption (Boolean)
active = opt "active"
children :: Option CommentActionOption (Node)
children = opt "children"
className :: Option CommentActionOption (String)
className = opt "className"
content :: Option CommentActionOption (UnknownType)
content = opt "content" -- custom
