module SemanticUI.FeedUser where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedUserClass :: ReactClass FeedUserProps
foreign import data FeedUserOption :: Type
newtype FeedUserProps = FeedUserProps Foreign
feedUserProps :: Options FeedUserOption -> FeedUserProps
feedUserProps = FeedUserProps <<< options
feedUser :: Options FeedUserOption -> Array ReactElement -> ReactElement
feedUser opts = createElement feedUserClass (feedUserProps opts)
as :: Option FeedUserOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedUserOption (Node)
children = opt "children"
className :: Option FeedUserOption (String)
className = opt "className"
content :: Option FeedUserOption (UnknownType)
content = opt "content" -- custom
