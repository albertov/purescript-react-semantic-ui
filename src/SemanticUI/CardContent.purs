module SemanticUI.CardContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import cardContentClass :: ReactClass CardContentProps
foreign import data CardContentOption :: Type
newtype CardContentProps = CardContentProps Foreign
cardContentProps :: Options CardContentOption -> CardContentProps
cardContentProps = CardContentProps <<< options
cardContent :: Options CardContentOption -> Array ReactElement -> ReactElement
cardContent opts = createElement cardContentClass (cardContentProps opts)
as :: Option CardContentOption (UnknownType)
as = opt "as" -- custom
children :: Option CardContentOption (Node)
children = opt "children"
className :: Option CardContentOption (String)
className = opt "className"
content :: Option CardContentOption (UnknownType)
content = opt "content" -- custom
description :: Option CardContentOption (UnknownType)
description = opt "description" -- custom
extra :: Option CardContentOption (Boolean)
extra = opt "extra"
header :: Option CardContentOption (UnknownType)
header = opt "header" -- custom
meta :: Option CardContentOption (UnknownType)
meta = opt "meta" -- custom
textAlign :: Option CardContentOption (UnknownType)
textAlign = opt "textAlign" -- enum
