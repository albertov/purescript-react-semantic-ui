module SemanticUI.ItemDescription where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemDescriptionClass :: ReactClass ItemDescriptionProps
foreign import data ItemDescriptionOption :: Type
newtype ItemDescriptionProps = ItemDescriptionProps Foreign
itemDescriptionProps :: Options ItemDescriptionOption -> ItemDescriptionProps
itemDescriptionProps = ItemDescriptionProps <<< options
itemDescription :: Options ItemDescriptionOption -> Array ReactElement -> ReactElement
itemDescription opts = createElement itemDescriptionClass (itemDescriptionProps opts)
as :: Option ItemDescriptionOption (UnknownType)
as = opt "as" -- custom
children :: Option ItemDescriptionOption (Node)
children = opt "children"
className :: Option ItemDescriptionOption (String)
className = opt "className"
content :: Option ItemDescriptionOption (UnknownType)
content = opt "content" -- custom
