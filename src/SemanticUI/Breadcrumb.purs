module SemanticUI.Breadcrumb where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import breadcrumbClass :: ReactClass BreadcrumbProps
foreign import data BreadcrumbOption :: Type
newtype BreadcrumbProps = BreadcrumbProps Foreign
breadcrumbProps :: Options BreadcrumbOption -> BreadcrumbProps
breadcrumbProps = BreadcrumbProps <<< options
breadcrumb :: Options BreadcrumbOption -> Array ReactElement -> ReactElement
breadcrumb opts = createElement breadcrumbClass (breadcrumbProps opts)
as :: Option BreadcrumbOption (UnknownType)
as = opt "as" -- custom
children :: Option BreadcrumbOption (Node)
children = opt "children"
className :: Option BreadcrumbOption (String)
className = opt "className"
divider :: Option BreadcrumbOption (UnknownType)
divider = opt "divider" -- custom
icon :: Option BreadcrumbOption (UnknownType)
icon = opt "icon" -- custom
sections :: Option BreadcrumbOption (UnknownType)
sections = opt "sections" -- custom
size :: Option BreadcrumbOption (UnknownType)
size = opt "size" -- enum
