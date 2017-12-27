module SemanticUI.TabPane where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tabPaneClass :: ReactClass TabPaneProps
foreign import data TabPaneOption :: Type
newtype TabPaneProps = TabPaneProps Foreign
tabPaneProps :: Options TabPaneOption -> TabPaneProps
tabPaneProps = TabPaneProps <<< options
tabPane :: Options TabPaneOption -> Array ReactElement -> ReactElement
tabPane opts = createElement tabPaneClass (tabPaneProps opts)
as :: Option TabPaneOption (UnknownType)
as = opt "as" -- custom
active :: Option TabPaneOption (Boolean)
active = opt "active"
children :: Option TabPaneOption (Node)
children = opt "children"
className :: Option TabPaneOption (String)
className = opt "className"
content :: Option TabPaneOption (UnknownType)
content = opt "content" -- custom
loading :: Option TabPaneOption (Boolean)
loading = opt "loading"
