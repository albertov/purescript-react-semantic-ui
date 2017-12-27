module SemanticUI.FeedEvent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedEventClass :: ReactClass FeedEventProps
foreign import data FeedEventOption :: Type
newtype FeedEventProps = FeedEventProps Foreign
feedEventProps :: Options FeedEventOption -> FeedEventProps
feedEventProps = FeedEventProps <<< options
feedEvent :: Options FeedEventOption -> Array ReactElement -> ReactElement
feedEvent opts = createElement feedEventClass (feedEventProps opts)
as :: Option FeedEventOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedEventOption (Node)
children = opt "children"
className :: Option FeedEventOption (String)
className = opt "className"
content :: Option FeedEventOption (UnknownType)
content = opt "content" -- custom
date :: Option FeedEventOption (UnknownType)
date = opt "date" -- custom
extraImages :: Option FeedEventOption (UnknownType)
extraImages = opt "extraImages" -- custom
extraText :: Option FeedEventOption (UnknownType)
extraText = opt "extraText" -- custom
icon :: Option FeedEventOption (UnknownType)
icon = opt "icon" -- custom
image :: Option FeedEventOption (UnknownType)
image = opt "image" -- custom
meta :: Option FeedEventOption (UnknownType)
meta = opt "meta" -- custom
summary :: Option FeedEventOption (UnknownType)
summary = opt "summary" -- custom
