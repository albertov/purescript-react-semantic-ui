module SemanticUI.CardGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import cardGroupClass :: ReactClass CardGroupProps
foreign import data CardGroupOption :: Type
newtype CardGroupProps = CardGroupProps Foreign
cardGroupProps :: Options CardGroupOption -> CardGroupProps
cardGroupProps = CardGroupProps <<< options
cardGroup :: Options CardGroupOption -> Array ReactElement -> ReactElement
cardGroup opts = createElement cardGroupClass (cardGroupProps opts)
as :: Option CardGroupOption (UnknownType)
as = opt "as" -- custom
centered :: Option CardGroupOption (Boolean)
centered = opt "centered"
children :: Option CardGroupOption (Node)
children = opt "children"
className :: Option CardGroupOption (String)
className = opt "className"
content :: Option CardGroupOption (UnknownType)
content = opt "content" -- custom
doubling :: Option CardGroupOption (Boolean)
doubling = opt "doubling"
items :: Option CardGroupOption (UnknownType)
items = opt "items" -- custom
itemsPerRow :: Option CardGroupOption (UnknownType)
itemsPerRow = opt "itemsPerRow" -- enum
stackable :: Option CardGroupOption (Boolean)
stackable = opt "stackable"
textAlign :: Option CardGroupOption (UnknownType)
textAlign = opt "textAlign" -- enum
