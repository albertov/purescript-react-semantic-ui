module SemanticUI.ImageGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import imageGroupClass :: ReactClass ImageGroupProps
foreign import data ImageGroupOption :: Type
newtype ImageGroupProps = ImageGroupProps Foreign
imageGroupProps :: Options ImageGroupOption -> ImageGroupProps
imageGroupProps = ImageGroupProps <<< options
imageGroup :: Options ImageGroupOption -> Array ReactElement -> ReactElement
imageGroup opts = createElement imageGroupClass (imageGroupProps opts)
as :: Option ImageGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option ImageGroupOption (Node)
children = opt "children"
className :: Option ImageGroupOption (String)
className = opt "className"
content :: Option ImageGroupOption (UnknownType)
content = opt "content" -- custom
size :: Option ImageGroupOption (UnknownType)
size = opt "size" -- enum
