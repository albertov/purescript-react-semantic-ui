module SemanticUI.BreadcrumbDivider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import breadcrumbDividerClass :: ReactClass BreadcrumbDividerProps
foreign import data BreadcrumbDividerOption :: Type
newtype BreadcrumbDividerProps = BreadcrumbDividerProps Foreign
breadcrumbDividerProps :: Options BreadcrumbDividerOption -> BreadcrumbDividerProps
breadcrumbDividerProps = BreadcrumbDividerProps <<< options
breadcrumbDivider :: Options BreadcrumbDividerOption -> Array ReactElement -> ReactElement
breadcrumbDivider opts = createElement breadcrumbDividerClass (breadcrumbDividerProps opts)
as :: Option BreadcrumbDividerOption (UnknownType)
as = opt "as" -- custom
children :: Option BreadcrumbDividerOption (Node)
children = opt "children"
className :: Option BreadcrumbDividerOption (String)
className = opt "className"
content :: Option BreadcrumbDividerOption (UnknownType)
content = opt "content" -- custom
icon :: Option BreadcrumbDividerOption (UnknownType)
icon = opt "icon" -- custom
