module SemanticUI.Grid where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import gridClass :: ReactClass GridProps
foreign import data GridOption :: Type
newtype GridProps = GridProps Foreign
gridProps :: Options GridOption -> GridProps
gridProps = GridProps <<< options
grid :: Options GridOption -> Array ReactElement -> ReactElement
grid opts = createElement gridClass (gridProps opts)
as :: Option GridOption (UnknownType)
as = opt "as" -- custom
celled :: Option GridOption (UnknownType)
celled = opt "celled" -- union
centered :: Option GridOption (Boolean)
centered = opt "centered"
children :: Option GridOption (Node)
children = opt "children"
className :: Option GridOption (String)
className = opt "className"
columns :: Option GridOption (UnknownType)
columns = opt "columns" -- enum
container :: Option GridOption (Boolean)
container = opt "container"
divided :: Option GridOption (UnknownType)
divided = opt "divided" -- union
doubling :: Option GridOption (Boolean)
doubling = opt "doubling"
inverted :: Option GridOption (Boolean)
inverted = opt "inverted"
padded :: Option GridOption (UnknownType)
padded = opt "padded" -- union
relaxed :: Option GridOption (UnknownType)
relaxed = opt "relaxed" -- union
reversed :: Option GridOption (UnknownType)
reversed = opt "reversed" -- custom
stackable :: Option GridOption (Boolean)
stackable = opt "stackable"
stretched :: Option GridOption (Boolean)
stretched = opt "stretched"
textAlign :: Option GridOption (UnknownType)
textAlign = opt "textAlign" -- enum
verticalAlign :: Option GridOption (UnknownType)
verticalAlign = opt "verticalAlign" -- enum
