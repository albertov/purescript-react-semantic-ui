module SemanticUI.Image where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import imageClass :: ReactClass ImageProps
foreign import data ImageOption :: Type
newtype ImageProps = ImageProps Foreign
imageProps :: Options ImageOption -> ImageProps
imageProps = ImageProps <<< options
image :: Options ImageOption -> Array ReactElement -> ReactElement
image opts = createElement imageClass (imageProps opts)
as :: Option ImageOption (UnknownType)
as = opt "as" -- custom
avatar :: Option ImageOption (Boolean)
avatar = opt "avatar"
bordered :: Option ImageOption (Boolean)
bordered = opt "bordered"
centered :: Option ImageOption (Boolean)
centered = opt "centered"
children :: Option ImageOption (Node)
children = opt "children"
circular :: Option ImageOption (Boolean)
circular = opt "circular"
className :: Option ImageOption (String)
className = opt "className"
content :: Option ImageOption (UnknownType)
content = opt "content" -- custom
disabled :: Option ImageOption (Boolean)
disabled = opt "disabled"
dimmer :: Option ImageOption (UnknownType)
dimmer = opt "dimmer" -- custom
floated :: Option ImageOption (UnknownType)
floated = opt "floated" -- enum
fluid :: Option ImageOption (UnknownType)
fluid = opt "fluid" -- custom
hidden :: Option ImageOption (Boolean)
hidden = opt "hidden"
href :: Option ImageOption (String)
href = opt "href"
inline :: Option ImageOption (Boolean)
inline = opt "inline"
label :: Option ImageOption (UnknownType)
label = opt "label" -- custom
rounded :: Option ImageOption (Boolean)
rounded = opt "rounded"
size :: Option ImageOption (UnknownType)
size = opt "size" -- enum
spaced :: Option ImageOption (UnknownType)
spaced = opt "spaced" -- union
ui :: Option ImageOption (Boolean)
ui = opt "ui"
verticalAlign :: Option ImageOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
wrapped :: Option ImageOption (Boolean)
wrapped = opt "wrapped"
