module SemanticUI.DropdownDivider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dropdownDividerClass :: ReactClass DropdownDividerProps
foreign import data DropdownDividerOption :: Type
newtype DropdownDividerProps = DropdownDividerProps Foreign
dropdownDividerProps :: Options DropdownDividerOption -> DropdownDividerProps
dropdownDividerProps = DropdownDividerProps <<< options
dropdownDivider :: Options DropdownDividerOption -> Array ReactElement -> ReactElement
dropdownDivider opts = createElement dropdownDividerClass (dropdownDividerProps opts)
as :: Option DropdownDividerOption (UnknownType)
as = opt "as" -- custom
className :: Option DropdownDividerOption (String)
className = opt "className"
