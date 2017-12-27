module SemanticUI.FeedDate where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedDateClass :: ReactClass FeedDateProps
foreign import data FeedDateOption :: Type
newtype FeedDateProps = FeedDateProps Foreign
feedDateProps :: Options FeedDateOption -> FeedDateProps
feedDateProps = FeedDateProps <<< options
feedDate :: Options FeedDateOption -> Array ReactElement -> ReactElement
feedDate opts = createElement feedDateClass (feedDateProps opts)
as :: Option FeedDateOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedDateOption (Node)
children = opt "children"
className :: Option FeedDateOption (String)
className = opt "className"
content :: Option FeedDateOption (UnknownType)
content = opt "content" -- custom
