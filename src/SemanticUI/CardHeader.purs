module SemanticUI.CardHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import cardHeaderClass :: ReactClass CardHeaderProps
foreign import data CardHeaderOption :: Type
newtype CardHeaderProps = CardHeaderProps Foreign
cardHeaderProps :: Options CardHeaderOption -> CardHeaderProps
cardHeaderProps = CardHeaderProps <<< options
cardHeader :: Options CardHeaderOption -> Array ReactElement -> ReactElement
cardHeader opts = createElement cardHeaderClass (cardHeaderProps opts)
as :: Option CardHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option CardHeaderOption (Node)
children = opt "children"
className :: Option CardHeaderOption (String)
className = opt "className"
content :: Option CardHeaderOption (UnknownType)
content = opt "content" -- custom
textAlign :: Option CardHeaderOption (UnknownType)
textAlign = opt "textAlign" -- enum
