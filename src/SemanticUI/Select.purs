module SemanticUI.Select where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import selectClass :: ReactClass SelectProps
foreign import data SelectOption :: Type
newtype SelectProps = SelectProps Foreign
selectProps :: Options SelectOption -> SelectProps
selectProps = SelectProps <<< options
select :: Options SelectOption -> Array ReactElement -> ReactElement
select opts = createElement selectClass (selectProps opts)
