module SemanticUI.ItemHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemHeaderClass :: ReactClass ItemHeaderProps
foreign import data ItemHeaderOption :: Type
newtype ItemHeaderProps = ItemHeaderProps Foreign
itemHeaderProps :: Options ItemHeaderOption -> ItemHeaderProps
itemHeaderProps = ItemHeaderProps <<< options
itemHeader :: Options ItemHeaderOption -> Array ReactElement -> ReactElement
itemHeader opts = createElement itemHeaderClass (itemHeaderProps opts)
as :: Option ItemHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemHeaderOption (Node)
children = opt "children"
className :: Option ItemHeaderOption (String)
className = opt "className"
content :: Option ItemHeaderOption (UnknownType)
content = opt "content" -- custom
