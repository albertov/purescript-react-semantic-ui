module SemanticUI.IconGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import iconGroupClass :: ReactClass IconGroupProps
foreign import data IconGroupOption :: Type
newtype IconGroupProps = IconGroupProps Foreign
iconGroupProps :: Options IconGroupOption -> IconGroupProps
iconGroupProps = IconGroupProps <<< options
iconGroup :: Options IconGroupOption -> Array ReactElement -> ReactElement
iconGroup opts = createElement iconGroupClass (iconGroupProps opts)
as :: Option IconGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option IconGroupOption (Node)
children = opt "children"
className :: Option IconGroupOption (String)
className = opt "className"
content :: Option IconGroupOption (UnknownType)
content = opt "content" -- custom
size :: Option IconGroupOption (UnknownType)
size = opt "size" -- enum
