module SemanticUI.TableRow where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableRowClass :: ReactClass TableRowProps
foreign import data TableRowOption :: Type
newtype TableRowProps = TableRowProps Foreign
tableRowProps :: Options TableRowOption -> TableRowProps
tableRowProps = TableRowProps <<< options
tableRow :: Options TableRowOption -> Array ReactElement -> ReactElement
tableRow opts = createElement tableRowClass (tableRowProps opts)
as :: Option TableRowOption (UnknownType)
as = opt "as" -- custom
active :: Option TableRowOption (Boolean)
active = opt "active"
cellAs :: Option TableRowOption (UnknownType)
cellAs = opt "cellAs" -- custom
cells :: Option TableRowOption (UnknownType)
cells = opt "cells" -- custom
children :: Option TableRowOption (Node)
children = opt "children"
className :: Option TableRowOption (String)
className = opt "className"
disabled :: Option TableRowOption (Boolean)
disabled = opt "disabled"
error :: Option TableRowOption (Boolean)
error = opt "error"
negative :: Option TableRowOption (Boolean)
negative = opt "negative"
positive :: Option TableRowOption (Boolean)
positive = opt "positive"
textAlign :: Option TableRowOption (UnknownType)
textAlign = opt "textAlign" -- enum
verticalAlign :: Option TableRowOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
warning :: Option TableRowOption (Boolean)
warning = opt "warning"
