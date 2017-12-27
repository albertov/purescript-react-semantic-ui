module SemanticUI.Sticky where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import stickyClass :: ReactClass StickyProps
foreign import data StickyOption :: Type
newtype StickyProps = StickyProps Foreign
stickyProps :: Options StickyOption -> StickyProps
stickyProps = StickyProps <<< options
sticky :: Options StickyOption -> Array ReactElement -> ReactElement
sticky opts = createElement stickyClass (stickyProps opts)
as :: Option StickyOption (UnknownType)
as = opt "as" -- custom
active :: Option StickyOption (Boolean)
active = opt "active"
bottomOffset :: Option StickyOption (Number)
bottomOffset = opt "bottomOffset"
children :: Option StickyOption (Node)
children = opt "children"
className :: Option StickyOption (String)
className = opt "className"
context :: Option StickyOption (UnknownType)
context = opt "context" -- object
offset :: Option StickyOption (Number)
offset = opt "offset"
onBottom :: Option StickyOption (EventHandlerOpt)
onBottom = opt "onBottom"
onStick :: Option StickyOption (EventHandlerOpt)
onStick = opt "onStick"
onTop :: Option StickyOption (EventHandlerOpt)
onTop = opt "onTop"
onUnstick :: Option StickyOption (EventHandlerOpt)
onUnstick = opt "onUnstick"
pushing :: Option StickyOption (Boolean)
pushing = opt "pushing"
scrollContext :: Option StickyOption (UnknownType)
scrollContext = opt "scrollContext" -- object
