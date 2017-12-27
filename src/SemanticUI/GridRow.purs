module SemanticUI.GridRow where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import gridRowClass :: ReactClass GridRowProps
foreign import data GridRowOption :: Type
newtype GridRowProps = GridRowProps Foreign
gridRowProps :: Options GridRowOption -> GridRowProps
gridRowProps = GridRowProps <<< options
gridRow :: Options GridRowOption -> Array ReactElement -> ReactElement
gridRow opts = createElement gridRowClass (gridRowProps opts)
as :: Option GridRowOption (UnknownType)
as = opt "as" -- custom
centered :: Option GridRowOption (Boolean)
centered = opt "centered"
children :: Option GridRowOption (Node)
children = opt "children"
className :: Option GridRowOption (String)
className = opt "className"
color :: Option GridRowOption (UnknownType)
color = opt "color" -- enum
columns :: Option GridRowOption (UnknownType)
columns = opt "columns" -- enum
divided :: Option GridRowOption (Boolean)
divided = opt "divided"
only :: Option GridRowOption (UnknownType)
only = opt "only" -- custom
reversed :: Option GridRowOption (UnknownType)
reversed = opt "reversed" -- custom
stretched :: Option GridRowOption (Boolean)
stretched = opt "stretched"
textAlign :: Option GridRowOption (UnknownType)
textAlign = opt "textAlign" -- enum
verticalAlign :: Option GridRowOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
