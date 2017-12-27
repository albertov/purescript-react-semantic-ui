module SemanticUI.Search where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import searchClass :: ReactClass SearchProps
foreign import data SearchOption :: Type
newtype SearchProps = SearchProps Foreign
searchProps :: Options SearchOption -> SearchProps
searchProps = SearchProps <<< options
search :: Options SearchOption -> Array ReactElement -> ReactElement
search opts = createElement searchClass (searchProps opts)
as :: Option SearchOption (UnknownType)
as = opt "as" -- custom
defaultOpen :: Option SearchOption (Boolean)
defaultOpen = opt "defaultOpen"
defaultValue :: Option SearchOption (String)
defaultValue = opt "defaultValue"
icon :: Option SearchOption (UnknownType)
icon = opt "icon" -- union
minCharacters :: Option SearchOption (Number)
minCharacters = opt "minCharacters"
noResultsDescription :: Option SearchOption (Node)
noResultsDescription = opt "noResultsDescription"
noResultsMessage :: Option SearchOption (Node)
noResultsMessage = opt "noResultsMessage"
open :: Option SearchOption (Boolean)
open = opt "open"
results :: Option SearchOption (UnknownType)
results = opt "results" -- union
selectFirstResult :: Option SearchOption (Boolean)
selectFirstResult = opt "selectFirstResult"
showNoResults :: Option SearchOption (Boolean)
showNoResults = opt "showNoResults"
value :: Option SearchOption (String)
value = opt "value"
categoryRenderer :: Option SearchOption (EventHandlerOpt)
categoryRenderer = opt "categoryRenderer"
resultRenderer :: Option SearchOption (EventHandlerOpt)
resultRenderer = opt "resultRenderer"
onBlur :: Option SearchOption (EventHandlerOpt)
onBlur = opt "onBlur"
onFocus :: Option SearchOption (EventHandlerOpt)
onFocus = opt "onFocus"
onMouseDown :: Option SearchOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
onResultSelect :: Option SearchOption (EventHandlerOpt)
onResultSelect = opt "onResultSelect"
onSearchChange :: Option SearchOption (EventHandlerOpt)
onSearchChange = opt "onSearchChange"
onSelectionChange :: Option SearchOption (EventHandlerOpt)
onSelectionChange = opt "onSelectionChange"
aligned :: Option SearchOption (String)
aligned = opt "aligned"
category :: Option SearchOption (Boolean)
category = opt "category"
className :: Option SearchOption (String)
className = opt "className"
fluid :: Option SearchOption (Boolean)
fluid = opt "fluid"
input :: Option SearchOption (UnknownType)
input = opt "input" -- custom
loading :: Option SearchOption (Boolean)
loading = opt "loading"
size :: Option SearchOption (UnknownType)
size = opt "size" -- enum
