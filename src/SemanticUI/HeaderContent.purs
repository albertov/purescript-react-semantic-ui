module SemanticUI.HeaderContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import headerContentClass :: ReactClass HeaderContentProps
foreign import data HeaderContentOption :: Type
newtype HeaderContentProps = HeaderContentProps Foreign
headerContentProps :: Options HeaderContentOption -> HeaderContentProps
headerContentProps = HeaderContentProps <<< options
headerContent :: Options HeaderContentOption -> Array ReactElement -> ReactElement
headerContent opts = createElement headerContentClass (headerContentProps opts)
as :: Option HeaderContentOption (UnknownType)
as = opt "as" -- custom
children :: Option HeaderContentOption (Node)
children = opt "children"
className :: Option HeaderContentOption (String)
className = opt "className"
content :: Option HeaderContentOption (UnknownType)
content = opt "content" -- custom
