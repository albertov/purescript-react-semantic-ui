module SemanticUI.Accordion where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import accordionClass :: ReactClass AccordionProps
foreign import data AccordionOption :: Type
newtype AccordionProps = AccordionProps Foreign
accordionProps :: Options AccordionOption -> AccordionProps
accordionProps = AccordionProps <<< options
accordion :: Options AccordionOption -> Array ReactElement -> ReactElement
accordion opts = createElement accordionClass (accordionProps opts)
className :: Option AccordionOption (String)
className = opt "className"
fluid :: Option AccordionOption (Boolean)
fluid = opt "fluid"
inverted :: Option AccordionOption (Boolean)
inverted = opt "inverted"
styled :: Option AccordionOption (Boolean)
styled = opt "styled"
