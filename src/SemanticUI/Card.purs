module SemanticUI.Card where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import cardClass :: ReactClass CardProps
foreign import data CardOption :: Type
newtype CardProps = CardProps Foreign
cardProps :: Options CardOption -> CardProps
cardProps = CardProps <<< options
card :: Options CardOption -> Array ReactElement -> ReactElement
card opts = createElement cardClass (cardProps opts)
as :: Option CardOption (UnknownType)
as = opt "as" -- custom
centered :: Option CardOption (Boolean)
centered = opt "centered"
children :: Option CardOption (Node)
children = opt "children"
className :: Option CardOption (String)
className = opt "className"
color :: Option CardOption (UnknownType)
color = opt "color" -- enum
content :: Option CardOption (UnknownType)
content = opt "content" -- custom
description :: Option CardOption (UnknownType)
description = opt "description" -- custom
extra :: Option CardOption (UnknownType)
extra = opt "extra" -- custom
fluid :: Option CardOption (Boolean)
fluid = opt "fluid"
header :: Option CardOption (UnknownType)
header = opt "header" -- custom
href :: Option CardOption (String)
href = opt "href"
image :: Option CardOption (UnknownType)
image = opt "image" -- custom
link :: Option CardOption (Boolean)
link = opt "link"
meta :: Option CardOption (UnknownType)
meta = opt "meta" -- custom
onClick :: Option CardOption (EventHandlerOpt)
onClick = opt "onClick"
raised :: Option CardOption (Boolean)
raised = opt "raised"
