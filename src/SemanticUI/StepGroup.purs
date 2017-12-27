module SemanticUI.StepGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import stepGroupClass :: ReactClass StepGroupProps
foreign import data StepGroupOption :: Type
newtype StepGroupProps = StepGroupProps Foreign
stepGroupProps :: Options StepGroupOption -> StepGroupProps
stepGroupProps = StepGroupProps <<< options
stepGroup :: Options StepGroupOption -> Array ReactElement -> ReactElement
stepGroup opts = createElement stepGroupClass (stepGroupProps opts)
as :: Option StepGroupOption (UnknownType)
as = opt "as" -- custom
attached :: Option StepGroupOption (UnknownType)
attached = opt "attached" -- union
children :: Option StepGroupOption (Node)
children = opt "children"
className :: Option StepGroupOption (String)
className = opt "className"
content :: Option StepGroupOption (UnknownType)
content = opt "content" -- custom
fluid :: Option StepGroupOption (Boolean)
fluid = opt "fluid"
items :: Option StepGroupOption (UnknownType)
items = opt "items" -- custom
ordered :: Option StepGroupOption (Boolean)
ordered = opt "ordered"
size :: Option StepGroupOption (UnknownType)
size = opt "size" -- enum
stackable :: Option StepGroupOption (UnknownType)
stackable = opt "stackable" -- enum
unstackable :: Option StepGroupOption (Boolean)
unstackable = opt "unstackable"
vertical :: Option StepGroupOption (Boolean)
vertical = opt "vertical"
widths :: Option StepGroupOption (UnknownType)
widths = opt "widths" -- enum
