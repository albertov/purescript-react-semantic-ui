module SemanticUI.MenuItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import menuItemClass :: ReactClass MenuItemProps
foreign import data MenuItemOption :: Type
newtype MenuItemProps = MenuItemProps Foreign
menuItemProps :: Options MenuItemOption -> MenuItemProps
menuItemProps = MenuItemProps <<< options
menuItem :: Options MenuItemOption -> Array ReactElement -> ReactElement
menuItem opts = createElement menuItemClass (menuItemProps opts)
as :: Option MenuItemOption (UnknownType)
as = opt "as" -- custom
active :: Option MenuItemOption (Boolean)
active = opt "active"
children :: Option MenuItemOption (Node)
children = opt "children"
className :: Option MenuItemOption (String)
className = opt "className"
color :: Option MenuItemOption (UnknownType)
color = opt "color" -- enum
content :: Option MenuItemOption (UnknownType)
content = opt "content" -- custom
disabled :: Option MenuItemOption (Boolean)
disabled = opt "disabled"
fitted :: Option MenuItemOption (UnknownType)
fitted = opt "fitted" -- union
header :: Option MenuItemOption (Boolean)
header = opt "header"
icon :: Option MenuItemOption (UnknownType)
icon = opt "icon" -- union
index :: Option MenuItemOption (Number)
index = opt "index"
link :: Option MenuItemOption (Boolean)
link = opt "link"
name :: Option MenuItemOption (String)
name = opt "name"
onClick :: Option MenuItemOption (EventHandlerOpt)
onClick = opt "onClick"
position :: Option MenuItemOption (UnknownType)
position = opt "position" -- enum
