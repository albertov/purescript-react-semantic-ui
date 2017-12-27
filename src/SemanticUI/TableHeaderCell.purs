module SemanticUI.TableHeaderCell where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableHeaderCellClass :: ReactClass TableHeaderCellProps
foreign import data TableHeaderCellOption :: Type
newtype TableHeaderCellProps = TableHeaderCellProps Foreign
tableHeaderCellProps :: Options TableHeaderCellOption -> TableHeaderCellProps
tableHeaderCellProps = TableHeaderCellProps <<< options
tableHeaderCell :: Options TableHeaderCellOption -> Array ReactElement -> ReactElement
tableHeaderCell opts = createElement tableHeaderCellClass (tableHeaderCellProps opts)
as :: Option TableHeaderCellOption (UnknownType)
as = opt "as" -- custom
className :: Option TableHeaderCellOption (String)
className = opt "className"
sorted :: Option TableHeaderCellOption (UnknownType)
sorted = opt "sorted" -- enum
