module SemanticUI.Comment where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentClass :: ReactClass CommentProps
foreign import data CommentOption :: Type
newtype CommentProps = CommentProps Foreign
commentProps :: Options CommentOption -> CommentProps
commentProps = CommentProps <<< options
comment :: Options CommentOption -> Array ReactElement -> ReactElement
comment opts = createElement commentClass (commentProps opts)
as :: Option CommentOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentOption (Node)
children = opt "children"
className :: Option CommentOption (String)
className = opt "className"
collapsed :: Option CommentOption (Boolean)
collapsed = opt "collapsed"
content :: Option CommentOption (UnknownType)
content = opt "content" -- custom
