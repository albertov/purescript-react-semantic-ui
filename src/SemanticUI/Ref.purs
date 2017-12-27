module SemanticUI.Ref where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import refClass :: ReactClass RefProps
foreign import data RefOption :: Type
newtype RefProps = RefProps Foreign
refProps :: Options RefOption -> RefProps
refProps = RefProps <<< options
ref :: Options RefOption -> Array ReactElement -> ReactElement
ref opts = createElement refClass (refProps opts)
children :: Option RefOption (ReactElement)
children = opt "children"
innerRef :: Option RefOption (EventHandlerOpt)
innerRef = opt "innerRef"
