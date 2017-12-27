module SemanticUI.GridColumn where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import gridColumnClass :: ReactClass GridColumnProps
foreign import data GridColumnOption :: Type
newtype GridColumnProps = GridColumnProps Foreign
gridColumnProps :: Options GridColumnOption -> GridColumnProps
gridColumnProps = GridColumnProps <<< options
gridColumn :: Options GridColumnOption -> Array ReactElement -> ReactElement
gridColumn opts = createElement gridColumnClass (gridColumnProps opts)
as :: Option GridColumnOption (UnknownType)
as = opt "as" -- custom
children :: Option GridColumnOption (Node)
children = opt "children"
className :: Option GridColumnOption (String)
className = opt "className"
color :: Option GridColumnOption (UnknownType)
color = opt "color" -- enum
computer :: Option GridColumnOption (UnknownType)
computer = opt "computer" -- enum
floated :: Option GridColumnOption (UnknownType)
floated = opt "floated" -- enum
largeScreen :: Option GridColumnOption (UnknownType)
largeScreen = opt "largeScreen" -- enum
mobile :: Option GridColumnOption (UnknownType)
mobile = opt "mobile" -- enum
only :: Option GridColumnOption (UnknownType)
only = opt "only" -- custom
stretched :: Option GridColumnOption (Boolean)
stretched = opt "stretched"
tablet :: Option GridColumnOption (UnknownType)
tablet = opt "tablet" -- enum
textAlign :: Option GridColumnOption (UnknownType)
textAlign = opt "textAlign" -- enum
verticalAlign :: Option GridColumnOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
widescreen :: Option GridColumnOption (UnknownType)
widescreen = opt "widescreen" -- enum
width :: Option GridColumnOption (UnknownType)
width = opt "width" -- enum
