module SemanticUI.Rating where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import ratingClass :: ReactClass RatingProps
foreign import data RatingOption :: Type
newtype RatingProps = RatingProps Foreign
ratingProps :: Options RatingOption -> RatingProps
ratingProps = RatingProps <<< options
rating :: Options RatingOption -> Array ReactElement -> ReactElement
rating opts = createElement ratingClass (ratingProps opts)
as :: Option RatingOption (UnknownType)
as = opt "as" -- custom
className :: Option RatingOption (String)
className = opt "className"
clearable :: Option RatingOption (UnknownType)
clearable = opt "clearable" -- union
defaultRating :: Option RatingOption (UnknownType)
defaultRating = opt "defaultRating" -- union
disabled :: Option RatingOption (Boolean)
disabled = opt "disabled"
icon :: Option RatingOption (UnknownType)
icon = opt "icon" -- enum
maxRating :: Option RatingOption (UnknownType)
maxRating = opt "maxRating" -- union
onRate :: Option RatingOption (EventHandlerOpt)
onRate = opt "onRate"
rating_ :: Option RatingOption (UnknownType)
rating_ = opt "rating" -- union
size :: Option RatingOption (UnknownType)
size = opt "size" -- enum
