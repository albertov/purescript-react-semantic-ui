module SemanticUI.LabelGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import labelGroupClass :: ReactClass LabelGroupProps
foreign import data LabelGroupOption :: Type
newtype LabelGroupProps = LabelGroupProps Foreign
labelGroupProps :: Options LabelGroupOption -> LabelGroupProps
labelGroupProps = LabelGroupProps <<< options
labelGroup :: Options LabelGroupOption -> Array ReactElement -> ReactElement
labelGroup opts = createElement labelGroupClass (labelGroupProps opts)
as :: Option LabelGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option LabelGroupOption (Node)
children = opt "children"
circular :: Option LabelGroupOption (Boolean)
circular = opt "circular"
className :: Option LabelGroupOption (String)
className = opt "className"
color :: Option LabelGroupOption (UnknownType)
color = opt "color" -- enum
content :: Option LabelGroupOption (UnknownType)
content = opt "content" -- custom
size :: Option LabelGroupOption (UnknownType)
size = opt "size" -- enum
tag :: Option LabelGroupOption (Boolean)
tag = opt "tag"
