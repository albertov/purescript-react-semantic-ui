module SemanticUI.Rail where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import railClass :: ReactClass RailProps
foreign import data RailOption :: Type
newtype RailProps = RailProps Foreign
railProps :: Options RailOption -> RailProps
railProps = RailProps <<< options
rail :: Options RailOption -> Array ReactElement -> ReactElement
rail opts = createElement railClass (railProps opts)
as :: Option RailOption (UnknownType)
as = opt "as" -- custom
attached :: Option RailOption (Boolean)
attached = opt "attached"
children :: Option RailOption (Node)
children = opt "children"
className :: Option RailOption (String)
className = opt "className"
close :: Option RailOption (UnknownType)
close = opt "close" -- union
content :: Option RailOption (UnknownType)
content = opt "content" -- custom
dividing :: Option RailOption (Boolean)
dividing = opt "dividing"
internal :: Option RailOption (Boolean)
internal = opt "internal"
position :: Option RailOption (UnknownType)
position = opt "position" -- enum
size :: Option RailOption (UnknownType)
size = opt "size" -- enum
