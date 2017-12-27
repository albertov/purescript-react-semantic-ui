module SemanticUI.Step where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import stepClass :: ReactClass StepProps
foreign import data StepOption :: Type
newtype StepProps = StepProps Foreign
stepProps :: Options StepOption -> StepProps
stepProps = StepProps <<< options
step :: Options StepOption -> Array ReactElement -> ReactElement
step opts = createElement stepClass (stepProps opts)
as :: Option StepOption (UnknownType)
as = opt "as" -- custom
active :: Option StepOption (Boolean)
active = opt "active"
children :: Option StepOption (Node)
children = opt "children"
className :: Option StepOption (String)
className = opt "className"
completed :: Option StepOption (Boolean)
completed = opt "completed"
content :: Option StepOption (UnknownType)
content = opt "content" -- custom
description :: Option StepOption (UnknownType)
description = opt "description" -- custom
disabled :: Option StepOption (Boolean)
disabled = opt "disabled"
href :: Option StepOption (String)
href = opt "href"
icon :: Option StepOption (UnknownType)
icon = opt "icon" -- custom
link :: Option StepOption (Boolean)
link = opt "link"
onClick :: Option StepOption (EventHandlerOpt)
onClick = opt "onClick"
ordered :: Option StepOption (Boolean)
ordered = opt "ordered"
title :: Option StepOption (UnknownType)
title = opt "title" -- custom
