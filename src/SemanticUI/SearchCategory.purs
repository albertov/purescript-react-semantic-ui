module SemanticUI.SearchCategory where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import searchCategoryClass :: ReactClass SearchCategoryProps
foreign import data SearchCategoryOption :: Type
newtype SearchCategoryProps = SearchCategoryProps Foreign
searchCategoryProps :: Options SearchCategoryOption -> SearchCategoryProps
searchCategoryProps = SearchCategoryProps <<< options
searchCategory :: Options SearchCategoryOption -> Array ReactElement -> ReactElement
searchCategory opts = createElement searchCategoryClass (searchCategoryProps opts)
as :: Option SearchCategoryOption (UnknownType)
as = opt "as" -- custom
active :: Option SearchCategoryOption (Boolean)
active = opt "active"
children :: Option SearchCategoryOption (Node)
children = opt "children"
className :: Option SearchCategoryOption (String)
className = opt "className"
content :: Option SearchCategoryOption (UnknownType)
content = opt "content" -- custom
name :: Option SearchCategoryOption (String)
name = opt "name"
renderer :: Option SearchCategoryOption (EventHandlerOpt)
renderer = opt "renderer"
results :: Option SearchCategoryOption (UnknownType)
results = opt "results" -- array
