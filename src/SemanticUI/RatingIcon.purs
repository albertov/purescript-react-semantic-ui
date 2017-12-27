module SemanticUI.RatingIcon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import ratingIconClass :: ReactClass RatingIconProps
foreign import data RatingIconOption :: Type
newtype RatingIconProps = RatingIconProps Foreign
ratingIconProps :: Options RatingIconOption -> RatingIconProps
ratingIconProps = RatingIconProps <<< options
ratingIcon :: Options RatingIconOption -> Array ReactElement -> ReactElement
ratingIcon opts = createElement ratingIconClass (ratingIconProps opts)
as :: Option RatingIconOption (UnknownType)
as = opt "as" -- custom
active :: Option RatingIconOption (Boolean)
active = opt "active"
className :: Option RatingIconOption (String)
className = opt "className"
index :: Option RatingIconOption (Number)
index = opt "index"
onClick :: Option RatingIconOption (EventHandlerOpt)
onClick = opt "onClick"
onKeyUp :: Option RatingIconOption (EventHandlerOpt)
onKeyUp = opt "onKeyUp"
onMouseEnter :: Option RatingIconOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
selected :: Option RatingIconOption (Boolean)
selected = opt "selected"
