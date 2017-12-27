module SemanticUI.FormDropdown where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import formDropdownClass :: ReactClass FormDropdownProps
foreign import data FormDropdownOption :: Type
newtype FormDropdownProps = FormDropdownProps Foreign
formDropdownProps :: Options FormDropdownOption -> FormDropdownProps
formDropdownProps = FormDropdownProps <<< options
formDropdown :: Options FormDropdownOption -> Array ReactElement -> ReactElement
formDropdown opts = createElement formDropdownClass (formDropdownProps opts)
as :: Option FormDropdownOption (UnknownType)
as = opt "as" -- custom
control :: Option FormDropdownOption (UnknownType)
control = opt "control" -- custom
