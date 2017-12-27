module SemanticUI.Feed where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedClass :: ReactClass FeedProps
foreign import data FeedOption :: Type
newtype FeedProps = FeedProps Foreign
feedProps :: Options FeedOption -> FeedProps
feedProps = FeedProps <<< options
feed :: Options FeedOption -> Array ReactElement -> ReactElement
feed opts = createElement feedClass (feedProps opts)
as :: Option FeedOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedOption (Node)
children = opt "children"
className :: Option FeedOption (String)
className = opt "className"
events :: Option FeedOption (UnknownType)
events = opt "events" -- custom
size :: Option FeedOption (UnknownType)
size = opt "size" -- enum
