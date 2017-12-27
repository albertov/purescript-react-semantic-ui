module SemanticUI.Dimmer where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dimmerClass :: ReactClass DimmerProps
foreign import data DimmerOption :: Type
newtype DimmerProps = DimmerProps Foreign
dimmerProps :: Options DimmerOption -> DimmerProps
dimmerProps = DimmerProps <<< options
dimmer :: Options DimmerOption -> Array ReactElement -> ReactElement
dimmer opts = createElement dimmerClass (dimmerProps opts)
as :: Option DimmerOption (UnknownType)
as = opt "as" -- custom
active :: Option DimmerOption (Boolean)
active = opt "active"
children :: Option DimmerOption (Node)
children = opt "children"
className :: Option DimmerOption (String)
className = opt "className"
content :: Option DimmerOption (UnknownType)
content = opt "content" -- custom
disabled :: Option DimmerOption (Boolean)
disabled = opt "disabled"
onClick :: Option DimmerOption (EventHandlerOpt)
onClick = opt "onClick"
onClickOutside :: Option DimmerOption (EventHandlerOpt)
onClickOutside = opt "onClickOutside"
inverted :: Option DimmerOption (Boolean)
inverted = opt "inverted"
page :: Option DimmerOption (Boolean)
page = opt "page"
simple :: Option DimmerOption (Boolean)
simple = opt "simple"
