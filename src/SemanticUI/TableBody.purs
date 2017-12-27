module SemanticUI.TableBody where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableBodyClass :: ReactClass TableBodyProps
foreign import data TableBodyOption :: Type
newtype TableBodyProps = TableBodyProps Foreign
tableBodyProps :: Options TableBodyOption -> TableBodyProps
tableBodyProps = TableBodyProps <<< options
tableBody :: Options TableBodyOption -> Array ReactElement -> ReactElement
tableBody opts = createElement tableBodyClass (tableBodyProps opts)
as :: Option TableBodyOption (UnknownType)
as = opt "as" -- custom
children :: Option TableBodyOption (Node)
children = opt "children"
className :: Option TableBodyOption (String)
className = opt "className"
