module SemanticUI.FeedLike where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedLikeClass :: ReactClass FeedLikeProps
foreign import data FeedLikeOption :: Type
newtype FeedLikeProps = FeedLikeProps Foreign
feedLikeProps :: Options FeedLikeOption -> FeedLikeProps
feedLikeProps = FeedLikeProps <<< options
feedLike :: Options FeedLikeOption -> Array ReactElement -> ReactElement
feedLike opts = createElement feedLikeClass (feedLikeProps opts)
as :: Option FeedLikeOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedLikeOption (Node)
children = opt "children"
className :: Option FeedLikeOption (String)
className = opt "className"
content :: Option FeedLikeOption (UnknownType)
content = opt "content" -- custom
icon :: Option FeedLikeOption (UnknownType)
icon = opt "icon" -- custom
