module SemanticUI.FeedMeta where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import feedMetaClass :: ReactClass FeedMetaProps
foreign import data FeedMetaOption :: Type
newtype FeedMetaProps = FeedMetaProps Foreign
feedMetaProps :: Options FeedMetaOption -> FeedMetaProps
feedMetaProps = FeedMetaProps <<< options
feedMeta :: Options FeedMetaOption -> Array ReactElement -> ReactElement
feedMeta opts = createElement feedMetaClass (feedMetaProps opts)
as :: Option FeedMetaOption (UnknownType)
as = opt "as" -- custom
children :: Option FeedMetaOption (Node)
children = opt "children"
className :: Option FeedMetaOption (String)
className = opt "className"
content :: Option FeedMetaOption (UnknownType)
content = opt "content" -- custom
like :: Option FeedMetaOption (UnknownType)
like = opt "like" -- custom
