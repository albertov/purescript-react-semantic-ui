module SemanticUI.FeedExtra where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedExtraClass :: ReactClass FeedExtraProps
foreign import data FeedExtraOption :: Type
newtype FeedExtraProps = FeedExtraProps Foreign
feedExtraProps :: Options FeedExtraOption -> FeedExtraProps
feedExtraProps = FeedExtraProps <<< options
feedExtra :: Options FeedExtraOption -> Array ReactElement -> ReactElement
feedExtra opts = createElement feedExtraClass (feedExtraProps opts)
as :: Option FeedExtraOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedExtraOption (Node)
children = opt "children"
className :: Option FeedExtraOption (String)
className = opt "className"
content :: Option FeedExtraOption (UnknownType)
content = opt "content" -- custom
images :: Option FeedExtraOption (UnknownType)
images = opt "images" -- custom
text :: Option FeedExtraOption (Boolean)
text = opt "text"
