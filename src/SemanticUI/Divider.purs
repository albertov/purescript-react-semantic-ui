module SemanticUI.Divider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dividerClass :: ReactClass DividerProps
foreign import data DividerOption :: Type
newtype DividerProps = DividerProps Foreign
dividerProps :: Options DividerOption -> DividerProps
dividerProps = DividerProps <<< options
divider :: Options DividerOption -> Array ReactElement -> ReactElement
divider opts = createElement dividerClass (dividerProps opts)
as :: Option DividerOption (UnknownType)
as = opt "as" -- custom
children :: Option DividerOption (Node)
children = opt "children"
className :: Option DividerOption (String)
className = opt "className"
clearing :: Option DividerOption (Boolean)
clearing = opt "clearing"
content :: Option DividerOption (UnknownType)
content = opt "content" -- custom
fitted :: Option DividerOption (Boolean)
fitted = opt "fitted"
hidden :: Option DividerOption (Boolean)
hidden = opt "hidden"
horizontal :: Option DividerOption (Boolean)
horizontal = opt "horizontal"
inverted :: Option DividerOption (Boolean)
inverted = opt "inverted"
section :: Option DividerOption (Boolean)
section = opt "section"
vertical :: Option DividerOption (Boolean)
vertical = opt "vertical"
