module SemanticUI.Table where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableClass :: ReactClass TableProps
foreign import data TableOption :: Type
newtype TableProps = TableProps Foreign
tableProps :: Options TableOption -> TableProps
tableProps = TableProps <<< options
table :: Options TableOption -> Array ReactElement -> ReactElement
table opts = createElement tableClass (tableProps opts)
as :: Option TableOption (UnknownType)
as = opt "as" -- custom
attached :: Option TableOption (UnknownType)
attached = opt "attached" -- union
basic :: Option TableOption (UnknownType)
basic = opt "basic" -- union
celled :: Option TableOption (Boolean)
celled = opt "celled"
children :: Option TableOption (Node)
children = opt "children"
className :: Option TableOption (String)
className = opt "className"
collapsing :: Option TableOption (Boolean)
collapsing = opt "collapsing"
color :: Option TableOption (UnknownType)
color = opt "color" -- enum
columns :: Option TableOption (UnknownType)
columns = opt "columns" -- enum
compact :: Option TableOption (UnknownType)
compact = opt "compact" -- union
definition :: Option TableOption (Boolean)
definition = opt "definition"
fixed :: Option TableOption (Boolean)
fixed = opt "fixed"
footerRow :: Option TableOption (UnknownType)
footerRow = opt "footerRow" -- custom
headerRow :: Option TableOption (UnknownType)
headerRow = opt "headerRow" -- custom
inverted :: Option TableOption (Boolean)
inverted = opt "inverted"
padded :: Option TableOption (UnknownType)
padded = opt "padded" -- union
renderBodyRow :: Option TableOption (UnknownType)
renderBodyRow = opt "renderBodyRow" -- custom
selectable :: Option TableOption (Boolean)
selectable = opt "selectable"
singleLine :: Option TableOption (Boolean)
singleLine = opt "singleLine"
size :: Option TableOption (UnknownType)
size = opt "size" -- enum
sortable :: Option TableOption (Boolean)
sortable = opt "sortable"
stackable :: Option TableOption (Boolean)
stackable = opt "stackable"
striped :: Option TableOption (Boolean)
striped = opt "striped"
structured :: Option TableOption (Boolean)
structured = opt "structured"
tableData :: Option TableOption (UnknownType)
tableData = opt "tableData" -- custom
textAlign :: Option TableOption (UnknownType)
textAlign = opt "textAlign" -- enum
unstackable :: Option TableOption (Boolean)
unstackable = opt "unstackable"
verticalAlign :: Option TableOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
