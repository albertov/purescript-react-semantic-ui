module SemanticUI.CardMeta where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import cardMetaClass :: ReactClass CardMetaProps
foreign import data CardMetaOption :: Type
newtype CardMetaProps = CardMetaProps Foreign
cardMetaProps :: Options CardMetaOption -> CardMetaProps
cardMetaProps = CardMetaProps <<< options
cardMeta :: Options CardMetaOption -> Array ReactElement -> ReactElement
cardMeta opts = createElement cardMetaClass (cardMetaProps opts)
as :: Option CardMetaOption (UnknownType)
as = opt "as" -- custom
children :: Option CardMetaOption (Node)
children = opt "children"
className :: Option CardMetaOption (String)
className = opt "className"
content :: Option CardMetaOption (UnknownType)
content = opt "content" -- custom
textAlign :: Option CardMetaOption (UnknownType)
textAlign = opt "textAlign" -- enum
