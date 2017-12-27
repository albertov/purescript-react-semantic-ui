module SemanticUI.SidebarPusher where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import sidebarPusherClass :: ReactClass SidebarPusherProps
foreign import data SidebarPusherOption :: Type
newtype SidebarPusherProps = SidebarPusherProps Foreign
sidebarPusherProps :: Options SidebarPusherOption -> SidebarPusherProps
sidebarPusherProps = SidebarPusherProps <<< options
sidebarPusher :: Options SidebarPusherOption -> Array ReactElement -> ReactElement
sidebarPusher opts = createElement sidebarPusherClass (sidebarPusherProps opts)
as :: Option SidebarPusherOption (UnknownType)
as = opt "as" -- custom
children :: Option SidebarPusherOption (Node)
children = opt "children"
className :: Option SidebarPusherOption (String)
className = opt "className"
content :: Option SidebarPusherOption (UnknownType)
content = opt "content" -- custom
dimmed :: Option SidebarPusherOption (Boolean)
dimmed = opt "dimmed"
