module SemanticUI.ListList where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listListClass :: ReactClass ListListProps
foreign import data ListListOption :: Type
newtype ListListProps = ListListProps Foreign
listListProps :: Options ListListOption -> ListListProps
listListProps = ListListProps <<< options
listList :: Options ListListOption -> Array ReactElement -> ReactElement
listList opts = createElement listListClass (listListProps opts)
as :: Option ListListOption (UnknownType)
as = opt "as" -- custom
children :: Option ListListOption (Node)
children = opt "children"
className :: Option ListListOption (String)
className = opt "className"
content :: Option ListListOption (UnknownType)
content = opt "content" -- custom
