module SemanticUI.StatisticLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import statisticLabelClass :: ReactClass StatisticLabelProps
foreign import data StatisticLabelOption :: Type
newtype StatisticLabelProps = StatisticLabelProps Foreign
statisticLabelProps :: Options StatisticLabelOption -> StatisticLabelProps
statisticLabelProps = StatisticLabelProps <<< options
statisticLabel :: Options StatisticLabelOption -> Array ReactElement -> ReactElement
statisticLabel opts = createElement statisticLabelClass (statisticLabelProps opts)
as :: Option StatisticLabelOption (UnknownType)
as = opt "as" -- custom
children :: Option StatisticLabelOption (Node)
children = opt "children"
className :: Option StatisticLabelOption (String)
className = opt "className"
content :: Option StatisticLabelOption (UnknownType)
content = opt "content" -- custom
