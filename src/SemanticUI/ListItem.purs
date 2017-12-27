module SemanticUI.ListItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemClass :: ReactClass ListItemProps
foreign import data ListItemOption :: Type
newtype ListItemProps = ListItemProps Foreign
listItemProps :: Options ListItemOption -> ListItemProps
listItemProps = ListItemProps <<< options
listItem :: Options ListItemOption -> Array ReactElement -> ReactElement
listItem opts = createElement listItemClass (listItemProps opts)
as :: Option ListItemOption (UnknownType)
as = opt "as" -- custom
active :: Option ListItemOption (Boolean)
active = opt "active"
children :: Option ListItemOption (Node)
children = opt "children"
className :: Option ListItemOption (String)
className = opt "className"
content :: Option ListItemOption (UnknownType)
content = opt "content" -- custom
description :: Option ListItemOption (UnknownType)
description = opt "description" -- custom
disabled :: Option ListItemOption (Boolean)
disabled = opt "disabled"
header :: Option ListItemOption (UnknownType)
header = opt "header" -- custom
icon :: Option ListItemOption (UnknownType)
icon = opt "icon" -- custom
image :: Option ListItemOption (UnknownType)
image = opt "image" -- custom
onClick :: Option ListItemOption (EventHandlerOpt)
onClick = opt "onClick"
value :: Option ListItemOption (String)
value = opt "value"
