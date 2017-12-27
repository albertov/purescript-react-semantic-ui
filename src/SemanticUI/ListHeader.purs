module SemanticUI.ListHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listHeaderClass :: ReactClass ListHeaderProps
foreign import data ListHeaderOption :: Type
newtype ListHeaderProps = ListHeaderProps Foreign
listHeaderProps :: Options ListHeaderOption -> ListHeaderProps
listHeaderProps = ListHeaderProps <<< options
listHeader :: Options ListHeaderOption -> Array ReactElement -> ReactElement
listHeader opts = createElement listHeaderClass (listHeaderProps opts)
as :: Option ListHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option ListHeaderOption (Node)
children = opt "children"
className :: Option ListHeaderOption (String)
className = opt "className"
content :: Option ListHeaderOption (UnknownType)
content = opt "content" -- custom
