module SemanticUI.CommentAuthor where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentAuthorClass :: ReactClass CommentAuthorProps
foreign import data CommentAuthorOption :: Type
newtype CommentAuthorProps = CommentAuthorProps Foreign
commentAuthorProps :: Options CommentAuthorOption -> CommentAuthorProps
commentAuthorProps = CommentAuthorProps <<< options
commentAuthor :: Options CommentAuthorOption -> Array ReactElement -> ReactElement
commentAuthor opts = createElement commentAuthorClass (commentAuthorProps opts)
as :: Option CommentAuthorOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentAuthorOption (Node)
children = opt "children"
className :: Option CommentAuthorOption (String)
className = opt "className"
content :: Option CommentAuthorOption (UnknownType)
content = opt "content" -- custom
