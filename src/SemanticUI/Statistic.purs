module SemanticUI.Statistic where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import statisticClass :: ReactClass StatisticProps
foreign import data StatisticOption :: Type
newtype StatisticProps = StatisticProps Foreign
statisticProps :: Options StatisticOption -> StatisticProps
statisticProps = StatisticProps <<< options
statistic :: Options StatisticOption -> Array ReactElement -> ReactElement
statistic opts = createElement statisticClass (statisticProps opts)
as :: Option StatisticOption (UnknownType)
as = opt "as" -- custom
children :: Option StatisticOption (Node)
children = opt "children"
className :: Option StatisticOption (String)
className = opt "className"
color :: Option StatisticOption (UnknownType)
color = opt "color" -- enum
content :: Option StatisticOption (UnknownType)
content = opt "content" -- custom
floated :: Option StatisticOption (UnknownType)
floated = opt "floated" -- enum
horizontal :: Option StatisticOption (Boolean)
horizontal = opt "horizontal"
inverted :: Option StatisticOption (Boolean)
inverted = opt "inverted"
label :: Option StatisticOption (UnknownType)
label = opt "label" -- custom
size :: Option StatisticOption (UnknownType)
size = opt "size" -- enum
text :: Option StatisticOption (Boolean)
text = opt "text"
value :: Option StatisticOption (UnknownType)
value = opt "value" -- custom
