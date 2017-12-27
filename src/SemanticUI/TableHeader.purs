module SemanticUI.TableHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableHeaderClass :: ReactClass TableHeaderProps
foreign import data TableHeaderOption :: Type
newtype TableHeaderProps = TableHeaderProps Foreign
tableHeaderProps :: Options TableHeaderOption -> TableHeaderProps
tableHeaderProps = TableHeaderProps <<< options
tableHeader :: Options TableHeaderOption -> Array ReactElement -> ReactElement
tableHeader opts = createElement tableHeaderClass (tableHeaderProps opts)
as :: Option TableHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option TableHeaderOption (Node)
children = opt "children"
className :: Option TableHeaderOption (String)
className = opt "className"
content :: Option TableHeaderOption (UnknownType)
content = opt "content" -- custom
fullWidth :: Option TableHeaderOption (Boolean)
fullWidth = opt "fullWidth"
