module SemanticUI.DropdownItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dropdownItemClass :: ReactClass DropdownItemProps
foreign import data DropdownItemOption :: Type
newtype DropdownItemProps = DropdownItemProps Foreign
dropdownItemProps :: Options DropdownItemOption -> DropdownItemProps
dropdownItemProps = DropdownItemProps <<< options
dropdownItem :: Options DropdownItemOption -> Array ReactElement -> ReactElement
dropdownItem opts = createElement dropdownItemClass (dropdownItemProps opts)
as :: Option DropdownItemOption (UnknownType)
as = opt "as" -- custom
active :: Option DropdownItemOption (Boolean)
active = opt "active"
children :: Option DropdownItemOption (Node)
children = opt "children"
className :: Option DropdownItemOption (String)
className = opt "className"
content :: Option DropdownItemOption (UnknownType)
content = opt "content" -- custom
description :: Option DropdownItemOption (UnknownType)
description = opt "description" -- custom
disabled :: Option DropdownItemOption (Boolean)
disabled = opt "disabled"
flag :: Option DropdownItemOption (UnknownType)
flag = opt "flag" -- custom
icon :: Option DropdownItemOption (UnknownType)
icon = opt "icon" -- custom
image :: Option DropdownItemOption (UnknownType)
image = opt "image" -- custom
label :: Option DropdownItemOption (UnknownType)
label = opt "label" -- custom
onClick :: Option DropdownItemOption (EventHandlerOpt)
onClick = opt "onClick"
selected :: Option DropdownItemOption (Boolean)
selected = opt "selected"
text :: Option DropdownItemOption (UnknownType)
text = opt "text" -- custom
value :: Option DropdownItemOption (UnknownType)
value = opt "value" -- union
