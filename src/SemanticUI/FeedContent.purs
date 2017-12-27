module SemanticUI.FeedContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedContentClass :: ReactClass FeedContentProps
foreign import data FeedContentOption :: Type
newtype FeedContentProps = FeedContentProps Foreign
feedContentProps :: Options FeedContentOption -> FeedContentProps
feedContentProps = FeedContentProps <<< options
feedContent :: Options FeedContentOption -> Array ReactElement -> ReactElement
feedContent opts = createElement feedContentClass (feedContentProps opts)
as :: Option FeedContentOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedContentOption (Node)
children = opt "children"
className :: Option FeedContentOption (String)
className = opt "className"
content :: Option FeedContentOption (UnknownType)
content = opt "content" -- custom
date :: Option FeedContentOption (UnknownType)
date = opt "date" -- custom
extraImages :: Option FeedContentOption (UnknownType)
extraImages = opt "extraImages" -- custom
extraText :: Option FeedContentOption (UnknownType)
extraText = opt "extraText" -- custom
meta :: Option FeedContentOption (UnknownType)
meta = opt "meta" -- custom
summary :: Option FeedContentOption (UnknownType)
summary = opt "summary" -- custom
