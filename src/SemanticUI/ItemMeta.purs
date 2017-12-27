module SemanticUI.ItemMeta where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemMetaClass :: ReactClass ItemMetaProps
foreign import data ItemMetaOption :: Type
newtype ItemMetaProps = ItemMetaProps Foreign
itemMetaProps :: Options ItemMetaOption -> ItemMetaProps
itemMetaProps = ItemMetaProps <<< options
itemMeta :: Options ItemMetaOption -> Array ReactElement -> ReactElement
itemMeta opts = createElement itemMetaClass (itemMetaProps opts)
as :: Option ItemMetaOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemMetaOption (Node)
children = opt "children"
className :: Option ItemMetaOption (String)
className = opt "className"
content :: Option ItemMetaOption (UnknownType)
content = opt "content" -- custom
