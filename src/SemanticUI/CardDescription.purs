module SemanticUI.CardDescription where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import cardDescriptionClass :: ReactClass CardDescriptionProps
foreign import data CardDescriptionOption :: Type
newtype CardDescriptionProps = CardDescriptionProps Foreign
cardDescriptionProps :: Options CardDescriptionOption -> CardDescriptionProps
cardDescriptionProps = CardDescriptionProps <<< options
cardDescription :: Options CardDescriptionOption -> Array ReactElement -> ReactElement
cardDescription opts = createElement cardDescriptionClass (cardDescriptionProps opts)
as :: Option CardDescriptionOption (UnknownType)
as = opt "as" -- custom
children :: Option CardDescriptionOption (Node)
children = opt "children"
className :: Option CardDescriptionOption (String)
className = opt "className"
content :: Option CardDescriptionOption (UnknownType)
content = opt "content" -- custom
textAlign :: Option CardDescriptionOption (UnknownType)
textAlign = opt "textAlign" -- enum
