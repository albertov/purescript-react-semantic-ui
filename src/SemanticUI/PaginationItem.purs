module SemanticUI.PaginationItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import paginationItemClass :: ReactClass PaginationItemProps
foreign import data PaginationItemOption :: Type
newtype PaginationItemProps = PaginationItemProps Foreign
paginationItemProps :: Options PaginationItemOption -> PaginationItemProps
paginationItemProps = PaginationItemProps <<< options
paginationItem :: Options PaginationItemOption -> Array ReactElement -> ReactElement
paginationItem opts = createElement paginationItemClass (paginationItemProps opts)
active :: Option PaginationItemOption (Boolean)
active = opt "active"
ariaLabel :: Option PaginationItemOption (String)
ariaLabel = opt "ariaLabel"
onClick :: Option PaginationItemOption (EventHandlerOpt)
onClick = opt "onClick"
onKeyDown :: Option PaginationItemOption (EventHandlerOpt)
onKeyDown = opt "onKeyDown"
type' :: Option PaginationItemOption (UnknownType)
type' = opt "type" -- enum
