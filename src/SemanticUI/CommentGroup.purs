module SemanticUI.CommentGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentGroupClass :: ReactClass CommentGroupProps
foreign import data CommentGroupOption :: Type
newtype CommentGroupProps = CommentGroupProps Foreign
commentGroupProps :: Options CommentGroupOption -> CommentGroupProps
commentGroupProps = CommentGroupProps <<< options
commentGroup :: Options CommentGroupOption -> Array ReactElement -> ReactElement
commentGroup opts = createElement commentGroupClass (commentGroupProps opts)
as :: Option CommentGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentGroupOption (Node)
children = opt "children"
className :: Option CommentGroupOption (String)
className = opt "className"
collapsed :: Option CommentGroupOption (Boolean)
collapsed = opt "collapsed"
content :: Option CommentGroupOption (UnknownType)
content = opt "content" -- custom
minimal :: Option CommentGroupOption (Boolean)
minimal = opt "minimal"
size :: Option CommentGroupOption (UnknownType)
size = opt "size" -- enum
threaded :: Option CommentGroupOption (Boolean)
threaded = opt "threaded"
