module SemanticUI.LabelDetail where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import labelDetailClass :: ReactClass LabelDetailProps
foreign import data LabelDetailOption :: Type
newtype LabelDetailProps = LabelDetailProps Foreign
labelDetailProps :: Options LabelDetailOption -> LabelDetailProps
labelDetailProps = LabelDetailProps <<< options
labelDetail :: Options LabelDetailOption -> Array ReactElement -> ReactElement
labelDetail opts = createElement labelDetailClass (labelDetailProps opts)
as :: Option LabelDetailOption (UnknownType)
as = opt "as" -- custom
children :: Option LabelDetailOption (Node)
children = opt "children"
className :: Option LabelDetailOption (String)
className = opt "className"
content :: Option LabelDetailOption (UnknownType)
content = opt "content" -- custom
