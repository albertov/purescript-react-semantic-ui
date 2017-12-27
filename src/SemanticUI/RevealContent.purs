module SemanticUI.RevealContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import revealContentClass :: ReactClass RevealContentProps
foreign import data RevealContentOption :: Type
newtype RevealContentProps = RevealContentProps Foreign
revealContentProps :: Options RevealContentOption -> RevealContentProps
revealContentProps = RevealContentProps <<< options
revealContent :: Options RevealContentOption -> Array ReactElement -> ReactElement
revealContent opts = createElement revealContentClass (revealContentProps opts)
as :: Option RevealContentOption (UnknownType)
as = opt "as" -- custom
children :: Option RevealContentOption (Node)
children = opt "children"
className :: Option RevealContentOption (String)
className = opt "className"
content :: Option RevealContentOption (UnknownType)
content = opt "content" -- custom
hidden :: Option RevealContentOption (Boolean)
hidden = opt "hidden"
visible :: Option RevealContentOption (Boolean)
visible = opt "visible"
