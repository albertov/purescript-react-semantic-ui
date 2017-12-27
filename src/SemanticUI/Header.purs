module SemanticUI.Header where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import headerClass :: ReactClass HeaderProps
foreign import data HeaderOption :: Type
newtype HeaderProps = HeaderProps Foreign
headerProps :: Options HeaderOption -> HeaderProps
headerProps = HeaderProps <<< options
header :: Options HeaderOption -> Array ReactElement -> ReactElement
header opts = createElement headerClass (headerProps opts)
as :: Option HeaderOption (UnknownType)
as = opt "as" -- custom
attached :: Option HeaderOption (UnknownType)
attached = opt "attached" -- union
block :: Option HeaderOption (Boolean)
block = opt "block"
children :: Option HeaderOption (Node)
children = opt "children"
className :: Option HeaderOption (String)
className = opt "className"
color :: Option HeaderOption (UnknownType)
color = opt "color" -- enum
content :: Option HeaderOption (UnknownType)
content = opt "content" -- custom
disabled :: Option HeaderOption (Boolean)
disabled = opt "disabled"
dividing :: Option HeaderOption (Boolean)
dividing = opt "dividing"
floated :: Option HeaderOption (UnknownType)
floated = opt "floated" -- enum
icon :: Option HeaderOption (UnknownType)
icon = opt "icon" -- custom
image :: Option HeaderOption (UnknownType)
image = opt "image" -- custom
inverted :: Option HeaderOption (Boolean)
inverted = opt "inverted"
size :: Option HeaderOption (UnknownType)
size = opt "size" -- enum
sub :: Option HeaderOption (Boolean)
sub = opt "sub"
subheader :: Option HeaderOption (UnknownType)
subheader = opt "subheader" -- custom
textAlign :: Option HeaderOption (UnknownType)
textAlign = opt "textAlign" -- enum
