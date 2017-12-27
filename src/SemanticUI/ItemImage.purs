module SemanticUI.ItemImage where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import itemImageClass :: ReactClass ItemImageProps
foreign import data ItemImageOption :: Type
newtype ItemImageProps = ItemImageProps Foreign
itemImageProps :: Options ItemImageOption -> ItemImageProps
itemImageProps = ItemImageProps <<< options
itemImage :: Options ItemImageOption -> Array ReactElement -> ReactElement
itemImage opts = createElement itemImageClass (itemImageProps opts)
size :: Option ItemImageOption (UnknownType)
size = opt "size" -- custom
