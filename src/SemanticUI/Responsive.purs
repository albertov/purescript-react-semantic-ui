module SemanticUI.Responsive where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import responsiveClass :: ReactClass ResponsiveProps
foreign import data ResponsiveOption :: Type
newtype ResponsiveProps = ResponsiveProps Foreign
responsiveProps :: Options ResponsiveOption -> ResponsiveProps
responsiveProps = ResponsiveProps <<< options
responsive :: Options ResponsiveOption -> Array ReactElement -> ReactElement
responsive opts = createElement responsiveClass (responsiveProps opts)
as :: Option ResponsiveOption (UnknownType)
as = opt "as" -- custom
children :: Option ResponsiveOption (Node)
children = opt "children"
fireOnMount :: Option ResponsiveOption (Boolean)
fireOnMount = opt "fireOnMount"
maxWidth :: Option ResponsiveOption (UnknownType)
maxWidth = opt "maxWidth" -- union
minWidth :: Option ResponsiveOption (UnknownType)
minWidth = opt "minWidth" -- union
onUpdate :: Option ResponsiveOption (EventHandlerOpt)
onUpdate = opt "onUpdate"
