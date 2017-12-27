module SemanticUI.MenuHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import menuHeaderClass :: ReactClass MenuHeaderProps
foreign import data MenuHeaderOption :: Type
newtype MenuHeaderProps = MenuHeaderProps Foreign
menuHeaderProps :: Options MenuHeaderOption -> MenuHeaderProps
menuHeaderProps = MenuHeaderProps <<< options
menuHeader :: Options MenuHeaderOption -> Array ReactElement -> ReactElement
menuHeader opts = createElement menuHeaderClass (menuHeaderProps opts)
as :: Option MenuHeaderOption (UnknownType)
as = opt "as" -- custom
children :: Option MenuHeaderOption (Node)
children = opt "children"
className :: Option MenuHeaderOption (String)
className = opt "className"
content :: Option MenuHeaderOption (UnknownType)
content = opt "content" -- custom
