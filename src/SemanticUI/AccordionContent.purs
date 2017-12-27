module SemanticUI.AccordionContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import accordionContentClass :: ReactClass AccordionContentProps
foreign import data AccordionContentOption :: Type
newtype AccordionContentProps = AccordionContentProps Foreign
accordionContentProps :: Options AccordionContentOption -> AccordionContentProps
accordionContentProps = AccordionContentProps <<< options
accordionContent :: Options AccordionContentOption -> Array ReactElement -> ReactElement
accordionContent opts = createElement accordionContentClass (accordionContentProps opts)
as :: Option AccordionContentOption (UnknownType)
as = opt "as" -- custom
active :: Option AccordionContentOption (Boolean)
active = opt "active"
children :: Option AccordionContentOption (Node)
children = opt "children"
className :: Option AccordionContentOption (String)
className = opt "className"
content :: Option AccordionContentOption (UnknownType)
content = opt "content" -- custom
