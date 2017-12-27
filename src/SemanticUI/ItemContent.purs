module SemanticUI.ItemContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemContentClass :: ReactClass ItemContentProps
foreign import data ItemContentOption :: Type
newtype ItemContentProps = ItemContentProps Foreign
itemContentProps :: Options ItemContentOption -> ItemContentProps
itemContentProps = ItemContentProps <<< options
itemContent :: Options ItemContentOption -> Array ReactElement -> ReactElement
itemContent opts = createElement itemContentClass (itemContentProps opts)
as :: Option ItemContentOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemContentOption (Node)
children = opt "children"
className :: Option ItemContentOption (String)
className = opt "className"
content :: Option ItemContentOption (UnknownType)
content = opt "content" -- custom
description :: Option ItemContentOption (UnknownType)
description = opt "description" -- custom
extra :: Option ItemContentOption (UnknownType)
extra = opt "extra" -- custom
header :: Option ItemContentOption (UnknownType)
header = opt "header" -- custom
meta :: Option ItemContentOption (UnknownType)
meta = opt "meta" -- custom
verticalAlign :: Option ItemContentOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
