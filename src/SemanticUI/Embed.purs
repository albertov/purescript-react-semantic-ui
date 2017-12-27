module SemanticUI.Embed where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import embedClass :: ReactClass EmbedProps
foreign import data EmbedOption :: Type
newtype EmbedProps = EmbedProps Foreign
embedProps :: Options EmbedOption -> EmbedProps
embedProps = EmbedProps <<< options
embed :: Options EmbedOption -> Array ReactElement -> ReactElement
embed opts = createElement embedClass (embedProps opts)
as :: Option EmbedOption (UnknownType)
as = opt "as" -- custom
active :: Option EmbedOption (Boolean)
active = opt "active"
aspectRatio :: Option EmbedOption (UnknownType)
aspectRatio = opt "aspectRatio" -- enum
autoplay :: Option EmbedOption (UnknownType)
autoplay = opt "autoplay" -- custom
brandedUI :: Option EmbedOption (UnknownType)
brandedUI = opt "brandedUI" -- custom
children :: Option EmbedOption (Node)
children = opt "children"
className :: Option EmbedOption (String)
className = opt "className"
color :: Option EmbedOption (UnknownType)
color = opt "color" -- custom
content :: Option EmbedOption (UnknownType)
content = opt "content" -- custom
defaultActive :: Option EmbedOption (Boolean)
defaultActive = opt "defaultActive"
hd :: Option EmbedOption (UnknownType)
hd = opt "hd" -- custom
icon :: Option EmbedOption (UnknownType)
icon = opt "icon" -- custom
id :: Option EmbedOption (UnknownType)
id = opt "id" -- custom
iframe :: Option EmbedOption (UnknownType)
iframe = opt "iframe" -- custom
onClick :: Option EmbedOption (EventHandlerOpt)
onClick = opt "onClick"
placeholder :: Option EmbedOption (String)
placeholder = opt "placeholder"
source :: Option EmbedOption (UnknownType)
source = opt "source" -- custom
url :: Option EmbedOption (UnknownType)
url = opt "url" -- custom
