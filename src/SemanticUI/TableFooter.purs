module SemanticUI.TableFooter where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import tableFooterClass :: ReactClass TableFooterProps
foreign import data TableFooterOption :: Type
newtype TableFooterProps = TableFooterProps Foreign
tableFooterProps :: Options TableFooterOption -> TableFooterProps
tableFooterProps = TableFooterProps <<< options
tableFooter :: Options TableFooterOption -> Array ReactElement -> ReactElement
tableFooter opts = createElement tableFooterClass (tableFooterProps opts)
as :: Option TableFooterOption (UnknownType)
as = opt "as" -- custom
