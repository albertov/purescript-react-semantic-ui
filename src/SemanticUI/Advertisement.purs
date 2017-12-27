module SemanticUI.Advertisement where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import advertisementClass :: ReactClass AdvertisementProps
foreign import data AdvertisementOption :: Type
newtype AdvertisementProps = AdvertisementProps Foreign
advertisementProps :: Options AdvertisementOption -> AdvertisementProps
advertisementProps = AdvertisementProps <<< options
advertisement :: Options AdvertisementOption -> Array ReactElement -> ReactElement
advertisement opts = createElement advertisementClass (advertisementProps opts)
as :: Option AdvertisementOption (UnknownType)
as = opt "as" -- custom
centered :: Option AdvertisementOption (Boolean)
centered = opt "centered"
children :: Option AdvertisementOption (Node)
children = opt "children"
className :: Option AdvertisementOption (String)
className = opt "className"
content :: Option AdvertisementOption (UnknownType)
content = opt "content" -- custom
test :: Option AdvertisementOption (UnknownType)
test = opt "test" -- union
unit :: Option AdvertisementOption (UnknownType)
unit = opt "unit" -- enum
