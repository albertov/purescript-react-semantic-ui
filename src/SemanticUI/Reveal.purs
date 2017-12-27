module SemanticUI.Reveal where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import revealClass :: ReactClass RevealProps
foreign import data RevealOption :: Type
newtype RevealProps = RevealProps Foreign
revealProps :: Options RevealOption -> RevealProps
revealProps = RevealProps <<< options
reveal :: Options RevealOption -> Array ReactElement -> ReactElement
reveal opts = createElement revealClass (revealProps opts)
as :: Option RevealOption (UnknownType)
as = opt "as" -- custom
active :: Option RevealOption (Boolean)
active = opt "active"
animated :: Option RevealOption (UnknownType)
animated = opt "animated" -- enum
children :: Option RevealOption (Node)
children = opt "children"
className :: Option RevealOption (String)
className = opt "className"
content :: Option RevealOption (UnknownType)
content = opt "content" -- custom
disabled :: Option RevealOption (Boolean)
disabled = opt "disabled"
instant :: Option RevealOption (Boolean)
instant = opt "instant"
