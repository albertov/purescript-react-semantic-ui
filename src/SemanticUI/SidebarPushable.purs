module SemanticUI.SidebarPushable where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import sidebarPushableClass :: ReactClass SidebarPushableProps
foreign import data SidebarPushableOption :: Type
newtype SidebarPushableProps = SidebarPushableProps Foreign
sidebarPushableProps :: Options SidebarPushableOption -> SidebarPushableProps
sidebarPushableProps = SidebarPushableProps <<< options
sidebarPushable :: Options SidebarPushableOption -> Array ReactElement -> ReactElement
sidebarPushable opts = createElement sidebarPushableClass (sidebarPushableProps opts)
as :: Option SidebarPushableOption (UnknownType)
as = opt "as" -- custom
children :: Option SidebarPushableOption (Node)
children = opt "children"
className :: Option SidebarPushableOption (String)
className = opt "className"
content :: Option SidebarPushableOption (UnknownType)
content = opt "content" -- custom
