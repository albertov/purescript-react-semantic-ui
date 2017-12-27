module SemanticUI.CommentMetadata where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import commentMetadataClass :: ReactClass CommentMetadataProps
foreign import data CommentMetadataOption :: Type
newtype CommentMetadataProps = CommentMetadataProps Foreign
commentMetadataProps :: Options CommentMetadataOption -> CommentMetadataProps
commentMetadataProps = CommentMetadataProps <<< options
commentMetadata :: Options CommentMetadataOption -> Array ReactElement -> ReactElement
commentMetadata opts = createElement commentMetadataClass (commentMetadataProps opts)
as :: Option CommentMetadataOption (UnknownType)
as = opt "as" -- custom
children :: Option CommentMetadataOption (Node)
children = opt "children"
className :: Option CommentMetadataOption (String)
className = opt "className"
content :: Option CommentMetadataOption (UnknownType)
content = opt "content" -- custom
