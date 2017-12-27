module SemanticUI.ListIcon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listIconClass :: ReactClass ListIconProps
foreign import data ListIconOption :: Type
newtype ListIconProps = ListIconProps Foreign
listIconProps :: Options ListIconOption -> ListIconProps
listIconProps = ListIconProps <<< options
listIcon :: Options ListIconOption -> Array ReactElement -> ReactElement
listIcon opts = createElement listIconClass (listIconProps opts)
className :: Option ListIconOption (String)
className = opt "className"
verticalAlign :: Option ListIconOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
