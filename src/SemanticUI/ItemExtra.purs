module SemanticUI.ItemExtra where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemExtraClass :: ReactClass ItemExtraProps
foreign import data ItemExtraOption :: Type
newtype ItemExtraProps = ItemExtraProps Foreign
itemExtraProps :: Options ItemExtraOption -> ItemExtraProps
itemExtraProps = ItemExtraProps <<< options
itemExtra :: Options ItemExtraOption -> Array ReactElement -> ReactElement
itemExtra opts = createElement itemExtraClass (itemExtraProps opts)
as :: Option ItemExtraOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemExtraOption (Node)
children = opt "children"
className :: Option ItemExtraOption (String)
className = opt "className"
content :: Option ItemExtraOption (UnknownType)
content = opt "content" -- custom
