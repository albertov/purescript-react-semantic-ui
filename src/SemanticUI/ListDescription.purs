module SemanticUI.ListDescription where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import listDescriptionClass :: ReactClass ListDescriptionProps
foreign import data ListDescriptionOption :: Type
newtype ListDescriptionProps = ListDescriptionProps Foreign
listDescriptionProps :: Options ListDescriptionOption -> ListDescriptionProps
listDescriptionProps = ListDescriptionProps <<< options
listDescription :: Options ListDescriptionOption -> Array ReactElement -> ReactElement
listDescription opts = createElement listDescriptionClass (listDescriptionProps opts)
as :: Option ListDescriptionOption (UnknownType)
as = opt "as" -- custom
children :: Option ListDescriptionOption (Node)
children = opt "children"
className :: Option ListDescriptionOption (String)
className = opt "className"
content :: Option ListDescriptionOption (UnknownType)
content = opt "content" -- custom
