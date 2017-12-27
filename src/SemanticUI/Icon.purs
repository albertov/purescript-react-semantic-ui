module SemanticUI.Icon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import iconClass :: ReactClass IconProps
foreign import data IconOption :: Type
newtype IconProps = IconProps Foreign
iconProps :: Options IconOption -> IconProps
iconProps = IconProps <<< options
icon :: Options IconOption -> Array ReactElement -> ReactElement
icon opts = createElement iconClass (iconProps opts)
as :: Option IconOption (UnknownType)
as = opt "as" -- custom
bordered :: Option IconOption (Boolean)
bordered = opt "bordered"
circular :: Option IconOption (Boolean)
circular = opt "circular"
className :: Option IconOption (String)
className = opt "className"
color :: Option IconOption (UnknownType)
color = opt "color" -- enum
corner :: Option IconOption (Boolean)
corner = opt "corner"
disabled :: Option IconOption (Boolean)
disabled = opt "disabled"
fitted :: Option IconOption (Boolean)
fitted = opt "fitted"
flipped :: Option IconOption (UnknownType)
flipped = opt "flipped" -- enum
inverted :: Option IconOption (Boolean)
inverted = opt "inverted"
link :: Option IconOption (Boolean)
link = opt "link"
loading :: Option IconOption (Boolean)
loading = opt "loading"
name :: Option IconOption (UnknownType)
name = opt "name" -- custom
rotated :: Option IconOption (UnknownType)
rotated = opt "rotated" -- enum
size :: Option IconOption (UnknownType)
size = opt "size" -- enum
