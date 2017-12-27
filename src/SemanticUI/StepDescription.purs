module SemanticUI.StepDescription where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import stepDescriptionClass :: ReactClass StepDescriptionProps
foreign import data StepDescriptionOption :: Type
newtype StepDescriptionProps = StepDescriptionProps Foreign
stepDescriptionProps :: Options StepDescriptionOption -> StepDescriptionProps
stepDescriptionProps = StepDescriptionProps <<< options
stepDescription :: Options StepDescriptionOption -> Array ReactElement -> ReactElement
stepDescription opts = createElement stepDescriptionClass (stepDescriptionProps opts)
as :: Option StepDescriptionOption (UnknownType)
as = opt "as" -- custom
children :: Option StepDescriptionOption (Node)
children = opt "children"
className :: Option StepDescriptionOption (String)
className = opt "className"
content :: Option StepDescriptionOption (UnknownType)
content = opt "content" -- custom
