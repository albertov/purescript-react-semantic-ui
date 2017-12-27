module SemanticUI.FeedLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedLabelClass :: ReactClass FeedLabelProps
foreign import data FeedLabelOption :: Type
newtype FeedLabelProps = FeedLabelProps Foreign
feedLabelProps :: Options FeedLabelOption -> FeedLabelProps
feedLabelProps = FeedLabelProps <<< options
feedLabel :: Options FeedLabelOption -> Array ReactElement -> ReactElement
feedLabel opts = createElement feedLabelClass (feedLabelProps opts)
as :: Option FeedLabelOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedLabelOption (Node)
children = opt "children"
className :: Option FeedLabelOption (String)
className = opt "className"
content :: Option FeedLabelOption (UnknownType)
content = opt "content" -- custom
icon :: Option FeedLabelOption (UnknownType)
icon = opt "icon" -- custom
image :: Option FeedLabelOption (UnknownType)
image = opt "image" -- custom
