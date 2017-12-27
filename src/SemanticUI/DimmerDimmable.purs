module SemanticUI.DimmerDimmable where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dimmerDimmableClass :: ReactClass DimmerDimmableProps
foreign import data DimmerDimmableOption :: Type
newtype DimmerDimmableProps = DimmerDimmableProps Foreign
dimmerDimmableProps :: Options DimmerDimmableOption -> DimmerDimmableProps
dimmerDimmableProps = DimmerDimmableProps <<< options
dimmerDimmable :: Options DimmerDimmableOption -> Array ReactElement -> ReactElement
dimmerDimmable opts = createElement dimmerDimmableClass (dimmerDimmableProps opts)
as :: Option DimmerDimmableOption (UnknownType)
as = opt "as" -- custom
blurring :: Option DimmerDimmableOption (Boolean)
blurring = opt "blurring"
children :: Option DimmerDimmableOption (Node)
children = opt "children"
className :: Option DimmerDimmableOption (String)
className = opt "className"
content :: Option DimmerDimmableOption (UnknownType)
content = opt "content" -- custom
dimmed :: Option DimmerDimmableOption (Boolean)
dimmed = opt "dimmed"
