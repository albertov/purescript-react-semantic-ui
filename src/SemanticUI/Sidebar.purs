module SemanticUI.Sidebar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import sidebarClass :: ReactClass SidebarProps
foreign import data SidebarOption :: Type
newtype SidebarProps = SidebarProps Foreign
sidebarProps :: Options SidebarOption -> SidebarProps
sidebarProps = SidebarProps <<< options
sidebar :: Options SidebarOption -> Array ReactElement -> ReactElement
sidebar opts = createElement sidebarClass (sidebarProps opts)
as :: Option SidebarOption (UnknownType)
as = opt "as" -- custom
animation :: Option SidebarOption (UnknownType)
animation = opt "animation" -- enum
children :: Option SidebarOption (Node)
children = opt "children"
className :: Option SidebarOption (String)
className = opt "className"
content :: Option SidebarOption (UnknownType)
content = opt "content" -- custom
defaultVisible :: Option SidebarOption (Boolean)
defaultVisible = opt "defaultVisible"
direction :: Option SidebarOption (UnknownType)
direction = opt "direction" -- enum
visible :: Option SidebarOption (Boolean)
visible = opt "visible"
width :: Option SidebarOption (UnknownType)
width = opt "width" -- enum
