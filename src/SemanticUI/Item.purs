module SemanticUI.Item where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemClass :: ReactClass ItemProps
foreign import data ItemOption :: Type
newtype ItemProps = ItemProps Foreign
itemProps :: Options ItemOption -> ItemProps
itemProps = ItemProps <<< options
item :: Options ItemOption -> Array ReactElement -> ReactElement
item opts = createElement itemClass (itemProps opts)
as :: Option ItemOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemOption (Node)
children = opt "children"
className :: Option ItemOption (String)
className = opt "className"
content :: Option ItemOption (UnknownType)
content = opt "content" -- custom
description :: Option ItemOption (UnknownType)
description = opt "description" -- custom
extra :: Option ItemOption (UnknownType)
extra = opt "extra" -- custom
header :: Option ItemOption (UnknownType)
header = opt "header" -- custom
image :: Option ItemOption (UnknownType)
image = opt "image" -- custom
meta :: Option ItemOption (UnknownType)
meta = opt "meta" -- custom
