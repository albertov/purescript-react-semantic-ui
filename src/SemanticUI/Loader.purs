module SemanticUI.Loader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import loaderClass :: ReactClass LoaderProps
foreign import data LoaderOption :: Type
newtype LoaderProps = LoaderProps Foreign
loaderProps :: Options LoaderOption -> LoaderProps
loaderProps = LoaderProps <<< options
loader :: Options LoaderOption -> Array ReactElement -> ReactElement
loader opts = createElement loaderClass (loaderProps opts)
as :: Option LoaderOption (UnknownType)
as = opt "as" -- custom
active :: Option LoaderOption (Boolean)
active = opt "active"
children :: Option LoaderOption (Node)
children = opt "children"
className :: Option LoaderOption (String)
className = opt "className"
content :: Option LoaderOption (UnknownType)
content = opt "content" -- custom
disabled :: Option LoaderOption (Boolean)
disabled = opt "disabled"
indeterminate :: Option LoaderOption (Boolean)
indeterminate = opt "indeterminate"
inline :: Option LoaderOption (UnknownType)
inline = opt "inline" -- union
inverted :: Option LoaderOption (Boolean)
inverted = opt "inverted"
size :: Option LoaderOption (UnknownType)
size = opt "size" -- enum
