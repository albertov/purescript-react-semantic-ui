module SemanticUI.Radio where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import radioClass :: ReactClass RadioProps
foreign import data RadioOption :: Type
newtype RadioProps = RadioProps Foreign
radioProps :: Options RadioOption -> RadioProps
radioProps = RadioProps <<< options
radio :: Options RadioOption -> Array ReactElement -> ReactElement
radio opts = createElement radioClass (radioProps opts)
slider :: Option RadioOption (UnknownType)
slider = opt "slider" -- custom
toggle :: Option RadioOption (UnknownType)
toggle = opt "toggle" -- custom
type' :: Option RadioOption (UnknownType)
type' = opt "type" -- custom
