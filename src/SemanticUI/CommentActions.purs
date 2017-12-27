module SemanticUI.CommentActions where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentActionsClass :: ReactClass CommentActionsProps
foreign import data CommentActionsOption :: Type
newtype CommentActionsProps = CommentActionsProps Foreign
commentActionsProps :: Options CommentActionsOption -> CommentActionsProps
commentActionsProps = CommentActionsProps <<< options
commentActions :: Options CommentActionsOption -> Array ReactElement -> ReactElement
commentActions opts = createElement commentActionsClass (commentActionsProps opts)
as :: Option CommentActionsOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentActionsOption (Node)
children = opt "children"
className :: Option CommentActionsOption (String)
className = opt "className"
content :: Option CommentActionsOption (UnknownType)
content = opt "content" -- custom
