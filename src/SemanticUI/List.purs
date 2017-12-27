module SemanticUI.List where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listClass :: ReactClass ListProps
foreign import data ListOption :: Type
newtype ListProps = ListProps Foreign
listProps :: Options ListOption -> ListProps
listProps = ListProps <<< options
list :: Options ListOption -> Array ReactElement -> ReactElement
list opts = createElement listClass (listProps opts)
as :: Option ListOption (UnknownType)
as = opt "as" -- custom
animated :: Option ListOption (Boolean)
animated = opt "animated"
bulleted :: Option ListOption (Boolean)
bulleted = opt "bulleted"
celled :: Option ListOption (Boolean)
celled = opt "celled"
children :: Option ListOption (Node)
children = opt "children"
className :: Option ListOption (String)
className = opt "className"
content :: Option ListOption (UnknownType)
content = opt "content" -- custom
divided :: Option ListOption (Boolean)
divided = opt "divided"
floated :: Option ListOption (UnknownType)
floated = opt "floated" -- enum
horizontal :: Option ListOption (Boolean)
horizontal = opt "horizontal"
inverted :: Option ListOption (Boolean)
inverted = opt "inverted"
items :: Option ListOption (UnknownType)
items = opt "items" -- custom
link :: Option ListOption (Boolean)
link = opt "link"
onItemClick :: Option ListOption (UnknownType)
onItemClick = opt "onItemClick" -- custom
ordered :: Option ListOption (Boolean)
ordered = opt "ordered"
relaxed :: Option ListOption (UnknownType)
relaxed = opt "relaxed" -- union
selection :: Option ListOption (Boolean)
selection = opt "selection"
size :: Option ListOption (UnknownType)
size = opt "size" -- enum
verticalAlign :: Option ListOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
