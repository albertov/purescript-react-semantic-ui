module SemanticUI.FeedSummary where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedSummaryClass :: ReactClass FeedSummaryProps
foreign import data FeedSummaryOption :: Type
newtype FeedSummaryProps = FeedSummaryProps Foreign
feedSummaryProps :: Options FeedSummaryOption -> FeedSummaryProps
feedSummaryProps = FeedSummaryProps <<< options
feedSummary :: Options FeedSummaryOption -> Array ReactElement -> ReactElement
feedSummary opts = createElement feedSummaryClass (feedSummaryProps opts)
as :: Option FeedSummaryOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedSummaryOption (Node)
children = opt "children"
className :: Option FeedSummaryOption (String)
className = opt "className"
content :: Option FeedSummaryOption (UnknownType)
content = opt "content" -- custom
date :: Option FeedSummaryOption (UnknownType)
date = opt "date" -- custom
user :: Option FeedSummaryOption (UnknownType)
user = opt "user" -- custom
