module SemanticUI.StepTitle where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import stepTitleClass :: ReactClass StepTitleProps
foreign import data StepTitleOption :: Type
newtype StepTitleProps = StepTitleProps Foreign
stepTitleProps :: Options StepTitleOption -> StepTitleProps
stepTitleProps = StepTitleProps <<< options
stepTitle :: Options StepTitleOption -> Array ReactElement -> ReactElement
stepTitle opts = createElement stepTitleClass (stepTitleProps opts)
as :: Option StepTitleOption (UnknownType)
as = opt "as" -- custom
children :: Option StepTitleOption (Node)
children = opt "children"
className :: Option StepTitleOption (String)
className = opt "className"
content :: Option StepTitleOption (UnknownType)
content = opt "content" -- custom
