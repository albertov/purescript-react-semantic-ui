module SemanticUI.Flag where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import flagClass :: ReactClass FlagProps
foreign import data FlagOption :: Type
newtype FlagProps = FlagProps Foreign
flagProps :: Options FlagOption -> FlagProps
flagProps = FlagProps <<< options
flag :: Options FlagOption -> Array ReactElement -> ReactElement
flag opts = createElement flagClass (flagProps opts)
as :: Option FlagOption (UnknownType)
as = opt "as" -- custom
className :: Option FlagOption (String)
className = opt "className"
name :: Option FlagOption (UnknownType)
name = opt "name" -- custom
