module SemanticUI.PopupContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import popupContentClass :: ReactClass PopupContentProps
foreign import data PopupContentOption :: Type
newtype PopupContentProps = PopupContentProps Foreign
popupContentProps :: Options PopupContentOption -> PopupContentProps
popupContentProps = PopupContentProps <<< options
popupContent :: Options PopupContentOption -> Array ReactElement -> ReactElement
popupContent opts = createElement popupContentClass (popupContentProps opts)
as :: Option PopupContentOption (UnknownType)
as = opt "as" -- custom
children :: Option PopupContentOption (Node)
children = opt "children"
className :: Option PopupContentOption (String)
className = opt "className"
content :: Option PopupContentOption (UnknownType)
content = opt "content" -- custom
