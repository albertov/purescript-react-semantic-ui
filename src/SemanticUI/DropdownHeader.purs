module SemanticUI.DropdownHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dropdownHeaderClass :: ReactClass DropdownHeaderProps
foreign import data DropdownHeaderOption :: Type
newtype DropdownHeaderProps = DropdownHeaderProps Foreign
dropdownHeaderProps :: Options DropdownHeaderOption -> DropdownHeaderProps
dropdownHeaderProps = DropdownHeaderProps <<< options
dropdownHeader :: Options DropdownHeaderOption -> Array ReactElement -> ReactElement
dropdownHeader opts = createElement dropdownHeaderClass (dropdownHeaderProps opts)
as :: Option DropdownHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option DropdownHeaderOption (Node)
children = opt "children"
className :: Option DropdownHeaderOption (String)
className = opt "className"
content :: Option DropdownHeaderOption (UnknownType)
content = opt "content" -- custom
icon :: Option DropdownHeaderOption (UnknownType)
icon = opt "icon" -- custom
