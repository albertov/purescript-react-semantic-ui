module SemanticUI.TransitionGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import transitionGroupClass :: ReactClass TransitionGroupProps
foreign import data TransitionGroupOption :: Type
newtype TransitionGroupProps = TransitionGroupProps Foreign
transitionGroupProps :: Options TransitionGroupOption -> TransitionGroupProps
transitionGroupProps = TransitionGroupProps <<< options
transitionGroup :: Options TransitionGroupOption -> Array ReactElement -> ReactElement
transitionGroup opts = createElement transitionGroupClass (transitionGroupProps opts)
as :: Option TransitionGroupOption (UnknownType)
as = opt "as" -- custom
animation :: Option TransitionGroupOption (UnknownType)
animation = opt "animation" -- enum
children :: Option TransitionGroupOption (Node)
children = opt "children"
duration :: Option TransitionGroupOption (UnknownType)
duration = opt "duration" -- union
