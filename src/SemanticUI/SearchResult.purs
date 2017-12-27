module SemanticUI.SearchResult where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import searchResultClass :: ReactClass SearchResultProps
foreign import data SearchResultOption :: Type
newtype SearchResultProps = SearchResultProps Foreign
searchResultProps :: Options SearchResultOption -> SearchResultProps
searchResultProps = SearchResultProps <<< options
searchResult :: Options SearchResultOption -> Array ReactElement -> ReactElement
searchResult opts = createElement searchResultClass (searchResultProps opts)
as :: Option SearchResultOption (UnknownType)
as = opt "as" -- custom
active :: Option SearchResultOption (Boolean)
active = opt "active"
className :: Option SearchResultOption (String)
className = opt "className"
content :: Option SearchResultOption (UnknownType)
content = opt "content" -- custom
description :: Option SearchResultOption (String)
description = opt "description"
id :: Option SearchResultOption (UnknownType)
id = opt "id" -- union
image :: Option SearchResultOption (String)
image = opt "image"
onClick :: Option SearchResultOption (EventHandlerOpt)
onClick = opt "onClick"
price :: Option SearchResultOption (String)
price = opt "price"
renderer :: Option SearchResultOption (EventHandlerOpt)
renderer = opt "renderer"
title :: Option SearchResultOption (String)
title = opt "title"
