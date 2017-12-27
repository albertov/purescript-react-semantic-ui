module SemanticUI.Label where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import labelClass :: ReactClass LabelProps
foreign import data LabelOption :: Type
newtype LabelProps = LabelProps Foreign
labelProps :: Options LabelOption -> LabelProps
labelProps = LabelProps <<< options
label :: Options LabelOption -> Array ReactElement -> ReactElement
label opts = createElement labelClass (labelProps opts)
as :: Option LabelOption (UnknownType)
as = opt "as" -- custom
active :: Option LabelOption (Boolean)
active = opt "active"
attached :: Option LabelOption (UnknownType)
attached = opt "attached" -- enum
basic :: Option LabelOption (Boolean)
basic = opt "basic"
children :: Option LabelOption (Node)
children = opt "children"
circular :: Option LabelOption (Boolean)
circular = opt "circular"
className :: Option LabelOption (String)
className = opt "className"
color :: Option LabelOption (UnknownType)
color = opt "color" -- enum
content :: Option LabelOption (UnknownType)
content = opt "content" -- custom
corner :: Option LabelOption (UnknownType)
corner = opt "corner" -- union
detail :: Option LabelOption (UnknownType)
detail = opt "detail" -- custom
empty :: Option LabelOption (UnknownType)
empty = opt "empty" -- custom
floating :: Option LabelOption (Boolean)
floating = opt "floating"
horizontal :: Option LabelOption (Boolean)
horizontal = opt "horizontal"
icon :: Option LabelOption (UnknownType)
icon = opt "icon" -- custom
image :: Option LabelOption (UnknownType)
image = opt "image" -- union
onClick :: Option LabelOption (EventHandlerOpt)
onClick = opt "onClick"
onRemove :: Option LabelOption (EventHandlerOpt)
onRemove = opt "onRemove"
pointing :: Option LabelOption (UnknownType)
pointing = opt "pointing" -- union
removeIcon :: Option LabelOption (UnknownType)
removeIcon = opt "removeIcon" -- custom
ribbon :: Option LabelOption (UnknownType)
ribbon = opt "ribbon" -- union
size :: Option LabelOption (UnknownType)
size = opt "size" -- enum
tag :: Option LabelOption (Boolean)
tag = opt "tag"
