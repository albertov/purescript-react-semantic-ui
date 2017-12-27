module SemanticUI.BreadcrumbSection where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import breadcrumbSectionClass :: ReactClass BreadcrumbSectionProps
foreign import data BreadcrumbSectionOption :: Type
newtype BreadcrumbSectionProps = BreadcrumbSectionProps Foreign
breadcrumbSectionProps :: Options BreadcrumbSectionOption -> BreadcrumbSectionProps
breadcrumbSectionProps = BreadcrumbSectionProps <<< options
breadcrumbSection :: Options BreadcrumbSectionOption -> Array ReactElement -> ReactElement
breadcrumbSection opts = createElement breadcrumbSectionClass (breadcrumbSectionProps opts)
as :: Option BreadcrumbSectionOption (UnknownType)
as = opt "as" -- custom
active :: Option BreadcrumbSectionOption (Boolean)
active = opt "active"
children :: Option BreadcrumbSectionOption (Node)
children = opt "children"
className :: Option BreadcrumbSectionOption (String)
className = opt "className"
content :: Option BreadcrumbSectionOption (UnknownType)
content = opt "content" -- custom
href :: Option BreadcrumbSectionOption (UnknownType)
href = opt "href" -- custom
link :: Option BreadcrumbSectionOption (UnknownType)
link = opt "link" -- custom
onClick :: Option BreadcrumbSectionOption (EventHandlerOpt)
onClick = opt "onClick"
