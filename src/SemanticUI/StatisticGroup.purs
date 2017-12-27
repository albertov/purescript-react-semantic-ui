module SemanticUI.StatisticGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import statisticGroupClass :: ReactClass StatisticGroupProps
foreign import data StatisticGroupOption :: Type
newtype StatisticGroupProps = StatisticGroupProps Foreign
statisticGroupProps :: Options StatisticGroupOption -> StatisticGroupProps
statisticGroupProps = StatisticGroupProps <<< options
statisticGroup :: Options StatisticGroupOption -> Array ReactElement -> ReactElement
statisticGroup opts = createElement statisticGroupClass (statisticGroupProps opts)
as :: Option StatisticGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option StatisticGroupOption (Node)
children = opt "children"
className :: Option StatisticGroupOption (String)
className = opt "className"
color :: Option StatisticGroupOption (UnknownType)
color = opt "color" -- enum
content :: Option StatisticGroupOption (UnknownType)
content = opt "content" -- custom
horizontal :: Option StatisticGroupOption (Boolean)
horizontal = opt "horizontal"
inverted :: Option StatisticGroupOption (Boolean)
inverted = opt "inverted"
items :: Option StatisticGroupOption (UnknownType)
items = opt "items" -- custom
size :: Option StatisticGroupOption (UnknownType)
size = opt "size" -- enum
widths :: Option StatisticGroupOption (UnknownType)
widths = opt "widths" -- enum
