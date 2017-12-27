module SemanticUI.CommentText where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentTextClass :: ReactClass CommentTextProps
foreign import data CommentTextOption :: Type
newtype CommentTextProps = CommentTextProps Foreign
commentTextProps :: Options CommentTextOption -> CommentTextProps
commentTextProps = CommentTextProps <<< options
commentText :: Options CommentTextOption -> Array ReactElement -> ReactElement
commentText opts = createElement commentTextClass (commentTextProps opts)
as :: Option CommentTextOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentTextOption (Node)
children = opt "children"
className :: Option CommentTextOption (String)
className = opt "className"
content :: Option CommentTextOption (UnknownType)
content = opt "content" -- custom
