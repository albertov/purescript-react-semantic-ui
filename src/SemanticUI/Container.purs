module SemanticUI.Container where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import containerClass :: ReactClass ContainerProps
foreign import data ContainerOption :: Type
newtype ContainerProps = ContainerProps Foreign
containerProps :: Options ContainerOption -> ContainerProps
containerProps = ContainerProps <<< options
container :: Options ContainerOption -> Array ReactElement -> ReactElement
container opts = createElement containerClass (containerProps opts)
as :: Option ContainerOption (UnknownType)
as = opt "as" -- custom
children :: Option ContainerOption (Node)
children = opt "children"
className :: Option ContainerOption (String)
className = opt "className"
content :: Option ContainerOption (UnknownType)
content = opt "content" -- custom
fluid :: Option ContainerOption (Boolean)
fluid = opt "fluid"
text :: Option ContainerOption (Boolean)
text = opt "text"
textAlign :: Option ContainerOption (UnknownType)
textAlign = opt "textAlign" -- enum
