module SemanticUI.MenuMenu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import menuMenuClass :: ReactClass MenuMenuProps
foreign import data MenuMenuOption :: Type
newtype MenuMenuProps = MenuMenuProps Foreign
menuMenuProps :: Options MenuMenuOption -> MenuMenuProps
menuMenuProps = MenuMenuProps <<< options
menuMenu :: Options MenuMenuOption -> Array ReactElement -> ReactElement
menuMenu opts = createElement menuMenuClass (menuMenuProps opts)
as :: Option MenuMenuOption (UnknownType)
as = opt "as" -- custom
children :: Option MenuMenuOption (Node)
children = opt "children"
className :: Option MenuMenuOption (String)
className = opt "className"
content :: Option MenuMenuOption (UnknownType)
content = opt "content" -- custom
position :: Option MenuMenuOption (UnknownType)
position = opt "position" -- enum
