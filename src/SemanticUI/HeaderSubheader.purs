module SemanticUI.HeaderSubheader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import headerSubheaderClass :: ReactClass HeaderSubheaderProps
foreign import data HeaderSubheaderOption :: Type
newtype HeaderSubheaderProps = HeaderSubheaderProps Foreign
headerSubheaderProps :: Options HeaderSubheaderOption -> HeaderSubheaderProps
headerSubheaderProps = HeaderSubheaderProps <<< options
headerSubheader :: Options HeaderSubheaderOption -> Array ReactElement -> ReactElement
headerSubheader opts = createElement headerSubheaderClass (headerSubheaderProps opts)
as :: Option HeaderSubheaderOption (UnknownType)
as = opt "as" -- custom
children :: Option HeaderSubheaderOption (Node)
children = opt "children"
className :: Option HeaderSubheaderOption (String)
className = opt "className"
content :: Option HeaderSubheaderOption (UnknownType)
content = opt "content" -- custom
