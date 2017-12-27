module SemanticUI.ItemGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemGroupClass :: ReactClass ItemGroupProps
foreign import data ItemGroupOption :: Type
newtype ItemGroupProps = ItemGroupProps Foreign
itemGroupProps :: Options ItemGroupOption -> ItemGroupProps
itemGroupProps = ItemGroupProps <<< options
itemGroup :: Options ItemGroupOption -> Array ReactElement -> ReactElement
itemGroup opts = createElement itemGroupClass (itemGroupProps opts)
as :: Option ItemGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemGroupOption (Node)
children = opt "children"
className :: Option ItemGroupOption (String)
className = opt "className"
content :: Option ItemGroupOption (UnknownType)
content = opt "content" -- custom
divided :: Option ItemGroupOption (Boolean)
divided = opt "divided"
items :: Option ItemGroupOption (UnknownType)
items = opt "items" -- custom
link :: Option ItemGroupOption (Boolean)
link = opt "link"
relaxed :: Option ItemGroupOption (UnknownType)
relaxed = opt "relaxed" -- union
unstackable :: Option ItemGroupOption (Boolean)
unstackable = opt "unstackable"
