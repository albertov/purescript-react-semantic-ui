module SemanticUI.CommentAvatar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentAvatarClass :: ReactClass CommentAvatarProps
foreign import data CommentAvatarOption :: Type
newtype CommentAvatarProps = CommentAvatarProps Foreign
commentAvatarProps :: Options CommentAvatarOption -> CommentAvatarProps
commentAvatarProps = CommentAvatarProps <<< options
commentAvatar :: Options CommentAvatarOption -> Array ReactElement -> ReactElement
commentAvatar opts = createElement commentAvatarClass (commentAvatarProps opts)
as :: Option CommentAvatarOption (UnknownType)
as = opt "as" -- custom
className :: Option CommentAvatarOption (String)
className = opt "className"
src :: Option CommentAvatarOption (String)
src = opt "src"
