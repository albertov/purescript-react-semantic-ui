module SemanticUI.AccordionTitle where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import accordionTitleClass :: ReactClass AccordionTitleProps
foreign import data AccordionTitleOption :: Type
newtype AccordionTitleProps = AccordionTitleProps Foreign
accordionTitleProps :: Options AccordionTitleOption -> AccordionTitleProps
accordionTitleProps = AccordionTitleProps <<< options
accordionTitle :: Options AccordionTitleOption -> Array ReactElement -> ReactElement
accordionTitle opts = createElement accordionTitleClass (accordionTitleProps opts)
as :: Option AccordionTitleOption (UnknownType)
as = opt "as" -- custom
active :: Option AccordionTitleOption (Boolean)
active = opt "active"
children :: Option AccordionTitleOption (Node)
children = opt "children"
className :: Option AccordionTitleOption (String)
className = opt "className"
content :: Option AccordionTitleOption (UnknownType)
content = opt "content" -- custom
index :: Option AccordionTitleOption (Number)
index = opt "index"
onClick :: Option AccordionTitleOption (EventHandlerOpt)
onClick = opt "onClick"
