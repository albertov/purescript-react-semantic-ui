module SemanticUI.PopupHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import popupHeaderClass :: ReactClass PopupHeaderProps
foreign import data PopupHeaderOption :: Type
newtype PopupHeaderProps = PopupHeaderProps Foreign
popupHeaderProps :: Options PopupHeaderOption -> PopupHeaderProps
popupHeaderProps = PopupHeaderProps <<< options
popupHeader :: Options PopupHeaderOption -> Array ReactElement -> ReactElement
popupHeader opts = createElement popupHeaderClass (popupHeaderProps opts)
as :: Option PopupHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option PopupHeaderOption (Node)
children = opt "children"
className :: Option PopupHeaderOption (String)
className = opt "className"
content :: Option PopupHeaderOption (UnknownType)
content = opt "content" -- custom
