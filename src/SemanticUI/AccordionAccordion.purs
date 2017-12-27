module SemanticUI.AccordionAccordion where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import accordionAccordionClass :: ReactClass AccordionAccordionProps
foreign import data AccordionAccordionOption :: Type
newtype AccordionAccordionProps = AccordionAccordionProps Foreign
accordionAccordionProps :: Options AccordionAccordionOption -> AccordionAccordionProps
accordionAccordionProps = AccordionAccordionProps <<< options
accordionAccordion :: Options AccordionAccordionOption -> Array ReactElement -> ReactElement
accordionAccordion opts = createElement accordionAccordionClass (accordionAccordionProps opts)
as :: Option AccordionAccordionOption (UnknownType)
as = opt "as" -- custom
activeIndex :: Option AccordionAccordionOption (UnknownType)
activeIndex = opt "activeIndex" -- custom
children :: Option AccordionAccordionOption (Node)
children = opt "children"
className :: Option AccordionAccordionOption (String)
className = opt "className"
defaultActiveIndex :: Option AccordionAccordionOption (UnknownType)
defaultActiveIndex = opt "defaultActiveIndex" -- custom
exclusive :: Option AccordionAccordionOption (Boolean)
exclusive = opt "exclusive"
onTitleClick :: Option AccordionAccordionOption (UnknownType)
onTitleClick = opt "onTitleClick" -- custom
panels :: Option AccordionAccordionOption (UnknownType)
panels = opt "panels" -- custom
