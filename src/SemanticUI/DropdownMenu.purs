module SemanticUI.DropdownMenu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dropdownMenuClass :: ReactClass DropdownMenuProps
foreign import data DropdownMenuOption :: Type
newtype DropdownMenuProps = DropdownMenuProps Foreign
dropdownMenuProps :: Options DropdownMenuOption -> DropdownMenuProps
dropdownMenuProps = DropdownMenuProps <<< options
dropdownMenu :: Options DropdownMenuOption -> Array ReactElement -> ReactElement
dropdownMenu opts = createElement dropdownMenuClass (dropdownMenuProps opts)
as :: Option DropdownMenuOption (UnknownType)
as = opt "as" -- custom
children :: Option DropdownMenuOption (Node)
children = opt "children"
className :: Option DropdownMenuOption (String)
className = opt "className"
content :: Option DropdownMenuOption (UnknownType)
content = opt "content" -- custom
scrolling :: Option DropdownMenuOption (Boolean)
scrolling = opt "scrolling"
