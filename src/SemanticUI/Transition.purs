module SemanticUI.Transition where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import transitionClass :: ReactClass TransitionProps
foreign import data TransitionOption :: Type
newtype TransitionProps = TransitionProps Foreign
transitionProps :: Options TransitionOption -> TransitionProps
transitionProps = TransitionProps <<< options
transition :: Options TransitionOption -> Array ReactElement -> ReactElement
transition opts = createElement transitionClass (transitionProps opts)
animation :: Option TransitionOption (UnknownType)
animation = opt "animation" -- enum
children :: Option TransitionOption (ReactElement)
children = opt "children"
duration :: Option TransitionOption (UnknownType)
duration = opt "duration" -- union
visible :: Option TransitionOption (Boolean)
visible = opt "visible"
mountOnShow :: Option TransitionOption (Boolean)
mountOnShow = opt "mountOnShow"
onComplete :: Option TransitionOption (EventHandlerOpt)
onComplete = opt "onComplete"
onHide :: Option TransitionOption (EventHandlerOpt)
onHide = opt "onHide"
onShow :: Option TransitionOption (EventHandlerOpt)
onShow = opt "onShow"
onStart :: Option TransitionOption (EventHandlerOpt)
onStart = opt "onStart"
reactKey :: Option TransitionOption (String)
reactKey = opt "reactKey"
transitionOnMount :: Option TransitionOption (Boolean)
transitionOnMount = opt "transitionOnMount"
unmountOnHide :: Option TransitionOption (Boolean)
unmountOnHide = opt "unmountOnHide"
