module SemanticUI.SearchResults where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import searchResultsClass :: ReactClass SearchResultsProps
foreign import data SearchResultsOption :: Type
newtype SearchResultsProps = SearchResultsProps Foreign
searchResultsProps :: Options SearchResultsOption -> SearchResultsProps
searchResultsProps = SearchResultsProps <<< options
searchResults :: Options SearchResultsOption -> Array ReactElement -> ReactElement
searchResults opts = createElement searchResultsClass (searchResultsProps opts)
as :: Option SearchResultsOption (UnknownType)
as = opt "as" -- custom
children :: Option SearchResultsOption (Node)
children = opt "children"
className :: Option SearchResultsOption (String)
className = opt "className"
content :: Option SearchResultsOption (UnknownType)
content = opt "content" -- custom
