module SemanticUI.TextArea where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import textAreaClass :: ReactClass TextAreaProps
foreign import data TextAreaOption :: Type
newtype TextAreaProps = TextAreaProps Foreign
textAreaProps :: Options TextAreaOption -> TextAreaProps
textAreaProps = TextAreaProps <<< options
textArea :: Options TextAreaOption -> Array ReactElement -> ReactElement
textArea opts = createElement textAreaClass (textAreaProps opts)
as :: Option TextAreaOption (UnknownType)
as = opt "as" -- custom
autoHeight :: Option TextAreaOption (Boolean)
autoHeight = opt "autoHeight"
onChange :: Option TextAreaOption (EventHandlerOpt)
onChange = opt "onChange"
onInput :: Option TextAreaOption (EventHandlerOpt)
onInput = opt "onInput"
rows :: Option TextAreaOption (UnknownType)
rows = opt "rows" -- union
style :: Option TextAreaOption (UnknownType)
style = opt "style" -- object
value :: Option TextAreaOption (UnknownType)
value = opt "value" -- union
