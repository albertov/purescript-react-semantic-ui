module SemanticUI.StepContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import stepContentClass :: ReactClass StepContentProps
foreign import data StepContentOption :: Type
newtype StepContentProps = StepContentProps Foreign
stepContentProps :: Options StepContentOption -> StepContentProps
stepContentProps = StepContentProps <<< options
stepContent :: Options StepContentOption -> Array ReactElement -> ReactElement
stepContent opts = createElement stepContentClass (stepContentProps opts)
as :: Option StepContentOption (UnknownType)
as = opt "as" -- custom
children :: Option StepContentOption (Node)
children = opt "children"
className :: Option StepContentOption (String)
className = opt "className"
content :: Option StepContentOption (UnknownType)
content = opt "content" -- custom
description :: Option StepContentOption (UnknownType)
description = opt "description" -- custom
title :: Option StepContentOption (UnknownType)
title = opt "title" -- custom
