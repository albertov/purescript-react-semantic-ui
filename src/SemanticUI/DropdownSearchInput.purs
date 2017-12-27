module SemanticUI.DropdownSearchInput where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dropdownSearchInputClass :: ReactClass DropdownSearchInputProps
foreign import data DropdownSearchInputOption :: Type
newtype DropdownSearchInputProps = DropdownSearchInputProps Foreign
dropdownSearchInputProps :: Options DropdownSearchInputOption -> DropdownSearchInputProps
dropdownSearchInputProps = DropdownSearchInputProps <<< options
dropdownSearchInput :: Options DropdownSearchInputOption -> Array ReactElement -> ReactElement
dropdownSearchInput opts = createElement dropdownSearchInputClass (dropdownSearchInputProps opts)
as :: Option DropdownSearchInputOption (UnknownType)
as = opt "as" -- custom
className :: Option DropdownSearchInputOption (String)
className = opt "className"
inputRef :: Option DropdownSearchInputOption (EventHandlerOpt)
inputRef = opt "inputRef"
tabIndex :: Option DropdownSearchInputOption (UnknownType)
tabIndex = opt "tabIndex" -- union
type' :: Option DropdownSearchInputOption (String)
type' = opt "type"
value :: Option DropdownSearchInputOption (UnknownType)
value = opt "value" -- union
