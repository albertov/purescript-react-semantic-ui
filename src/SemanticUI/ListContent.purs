module SemanticUI.ListContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listContentClass :: ReactClass ListContentProps
foreign import data ListContentOption :: Type
newtype ListContentProps = ListContentProps Foreign
listContentProps :: Options ListContentOption -> ListContentProps
listContentProps = ListContentProps <<< options
listContent :: Options ListContentOption -> Array ReactElement -> ReactElement
listContent opts = createElement listContentClass (listContentProps opts)
as :: Option ListContentOption (UnknownType)
as = opt "as" -- custom
children :: Option ListContentOption (Node)
children = opt "children"
className :: Option ListContentOption (String)
className = opt "className"
content :: Option ListContentOption (UnknownType)
content = opt "content" -- custom
description :: Option ListContentOption (UnknownType)
description = opt "description" -- custom
floated :: Option ListContentOption (UnknownType)
floated = opt "floated" -- enum
header :: Option ListContentOption (UnknownType)
header = opt "header" -- custom
verticalAlign :: Option ListContentOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
