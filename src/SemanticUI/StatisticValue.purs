module SemanticUI.StatisticValue where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import statisticValueClass :: ReactClass StatisticValueProps
foreign import data StatisticValueOption :: Type
newtype StatisticValueProps = StatisticValueProps Foreign
statisticValueProps :: Options StatisticValueOption -> StatisticValueProps
statisticValueProps = StatisticValueProps <<< options
statisticValue :: Options StatisticValueOption -> Array ReactElement -> ReactElement
statisticValue opts = createElement statisticValueClass (statisticValueProps opts)
as :: Option StatisticValueOption (UnknownType)
as = opt "as" -- custom
children :: Option StatisticValueOption (Node)
children = opt "children"
className :: Option StatisticValueOption (String)
className = opt "className"
content :: Option StatisticValueOption (UnknownType)
content = opt "content" -- custom
text :: Option StatisticValueOption (Boolean)
text = opt "text"
