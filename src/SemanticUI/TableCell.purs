module SemanticUI.TableCell where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableCellClass :: ReactClass TableCellProps
foreign import data TableCellOption :: Type
newtype TableCellProps = TableCellProps Foreign
tableCellProps :: Options TableCellOption -> TableCellProps
tableCellProps = TableCellProps <<< options
tableCell :: Options TableCellOption -> Array ReactElement -> ReactElement
tableCell opts = createElement tableCellClass (tableCellProps opts)
as :: Option TableCellOption (UnknownType)
as = opt "as" -- custom
active :: Option TableCellOption (Boolean)
active = opt "active"
children :: Option TableCellOption (Node)
children = opt "children"
className :: Option TableCellOption (String)
className = opt "className"
collapsing :: Option TableCellOption (Boolean)
collapsing = opt "collapsing"
content :: Option TableCellOption (UnknownType)
content = opt "content" -- custom
disabled :: Option TableCellOption (Boolean)
disabled = opt "disabled"
error :: Option TableCellOption (Boolean)
error = opt "error"
icon :: Option TableCellOption (UnknownType)
icon = opt "icon" -- custom
negative :: Option TableCellOption (Boolean)
negative = opt "negative"
positive :: Option TableCellOption (Boolean)
positive = opt "positive"
selectable :: Option TableCellOption (Boolean)
selectable = opt "selectable"
singleLine :: Option TableCellOption (Boolean)
singleLine = opt "singleLine"
textAlign :: Option TableCellOption (UnknownType)
textAlign = opt "textAlign" -- enum
verticalAlign :: Option TableCellOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
warning :: Option TableCellOption (Boolean)
warning = opt "warning"
width :: Option TableCellOption (UnknownType)
width = opt "width" -- enum
