module SemanticUI.Tab where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tabClass :: ReactClass TabProps
foreign import data TabOption :: Type
newtype TabProps = TabProps Foreign
tabProps :: Options TabOption -> TabProps
tabProps = TabProps <<< options
tab :: Options TabOption -> Array ReactElement -> ReactElement
tab opts = createElement tabClass (tabProps opts)
as :: Option TabOption (UnknownType)
as = opt "as" -- custom
defaultActiveIndex :: Option TabOption (UnknownType)
defaultActiveIndex = opt "defaultActiveIndex" -- union
activeIndex :: Option TabOption (UnknownType)
activeIndex = opt "activeIndex" -- union
menu :: Option TabOption (UnknownType)
menu = opt "menu" -- object
grid :: Option TabOption (UnknownType)
grid = opt "grid" -- object
onTabChange :: Option TabOption (EventHandlerOpt)
onTabChange = opt "onTabChange"
panes :: Option TabOption (UnknownType)
panes = opt "panes" -- arrayOf
renderActiveOnly :: Option TabOption (Boolean)
renderActiveOnly = opt "renderActiveOnly"
