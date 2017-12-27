module SemanticUI.Dropdown where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import dropdownClass :: ReactClass DropdownProps
foreign import data DropdownOption :: Type
newtype DropdownProps = DropdownProps Foreign
dropdownProps :: Options DropdownOption -> DropdownProps
dropdownProps = DropdownProps <<< options
dropdown :: Options DropdownOption -> Array ReactElement -> ReactElement
dropdown opts = createElement dropdownClass (dropdownProps opts)
as :: Option DropdownOption (UnknownType)
as = opt "as" -- custom
additionLabel :: Option DropdownOption (UnknownType)
additionLabel = opt "additionLabel" -- union
additionPosition :: Option DropdownOption (UnknownType)
additionPosition = opt "additionPosition" -- enum
allowAdditions :: Option DropdownOption (UnknownType)
allowAdditions = opt "allowAdditions" -- custom
basic :: Option DropdownOption (Boolean)
basic = opt "basic"
button :: Option DropdownOption (Boolean)
button = opt "button"
children :: Option DropdownOption (UnknownType)
children = opt "children" -- custom
className :: Option DropdownOption (String)
className = opt "className"
closeOnBlur :: Option DropdownOption (Boolean)
closeOnBlur = opt "closeOnBlur"
closeOnChange :: Option DropdownOption (Boolean)
closeOnChange = opt "closeOnChange"
compact :: Option DropdownOption (Boolean)
compact = opt "compact"
deburr :: Option DropdownOption (Boolean)
deburr = opt "deburr"
defaultOpen :: Option DropdownOption (Boolean)
defaultOpen = opt "defaultOpen"
defaultSearchQuery :: Option DropdownOption (String)
defaultSearchQuery = opt "defaultSearchQuery"
defaultSelectedLabel :: Option DropdownOption (UnknownType)
defaultSelectedLabel = opt "defaultSelectedLabel" -- custom
defaultValue :: Option DropdownOption (UnknownType)
defaultValue = opt "defaultValue" -- union
disabled :: Option DropdownOption (Boolean)
disabled = opt "disabled"
error :: Option DropdownOption (Boolean)
error = opt "error"
floating :: Option DropdownOption (Boolean)
floating = opt "floating"
fluid :: Option DropdownOption (Boolean)
fluid = opt "fluid"
header :: Option DropdownOption (Node)
header = opt "header"
icon :: Option DropdownOption (UnknownType)
icon = opt "icon" -- union
inline :: Option DropdownOption (Boolean)
inline = opt "inline"
item :: Option DropdownOption (Boolean)
item = opt "item"
labeled :: Option DropdownOption (Boolean)
labeled = opt "labeled"
loading :: Option DropdownOption (Boolean)
loading = opt "loading"
minCharacters :: Option DropdownOption (Number)
minCharacters = opt "minCharacters"
multiple :: Option DropdownOption (Boolean)
multiple = opt "multiple"
noResultsMessage :: Option DropdownOption (String)
noResultsMessage = opt "noResultsMessage"
onAddItem :: Option DropdownOption (EventHandlerOpt)
onAddItem = opt "onAddItem"
onBlur :: Option DropdownOption (EventHandlerOpt)
onBlur = opt "onBlur"
onChange :: Option DropdownOption (EventHandlerOpt)
onChange = opt "onChange"
onClick :: Option DropdownOption (EventHandlerOpt)
onClick = opt "onClick"
onClose :: Option DropdownOption (EventHandlerOpt)
onClose = opt "onClose"
onFocus :: Option DropdownOption (EventHandlerOpt)
onFocus = opt "onFocus"
onLabelClick :: Option DropdownOption (EventHandlerOpt)
onLabelClick = opt "onLabelClick"
onMouseDown :: Option DropdownOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
onOpen :: Option DropdownOption (EventHandlerOpt)
onOpen = opt "onOpen"
onSearchChange :: Option DropdownOption (EventHandlerOpt)
onSearchChange = opt "onSearchChange"
open :: Option DropdownOption (Boolean)
open = opt "open"
openOnFocus :: Option DropdownOption (Boolean)
openOnFocus = opt "openOnFocus"
options_ :: Option DropdownOption (UnknownType)
options_ = opt "options" -- custom
placeholder :: Option DropdownOption (String)
placeholder = opt "placeholder"
pointing :: Option DropdownOption (UnknownType)
pointing = opt "pointing" -- union
renderLabel :: Option DropdownOption (EventHandlerOpt)
renderLabel = opt "renderLabel"
scrolling :: Option DropdownOption (Boolean)
scrolling = opt "scrolling"
search :: Option DropdownOption (UnknownType)
search = opt "search" -- union
searchInput :: Option DropdownOption (UnknownType)
searchInput = opt "searchInput" -- union
searchQuery :: Option DropdownOption (String)
searchQuery = opt "searchQuery"
selectOnBlur :: Option DropdownOption (Boolean)
selectOnBlur = opt "selectOnBlur"
selectOnNavigation :: Option DropdownOption (Boolean)
selectOnNavigation = opt "selectOnNavigation"
selectedLabel :: Option DropdownOption (UnknownType)
selectedLabel = opt "selectedLabel" -- custom
selection :: Option DropdownOption (UnknownType)
selection = opt "selection" -- custom
simple :: Option DropdownOption (Boolean)
simple = opt "simple"
tabIndex :: Option DropdownOption (UnknownType)
tabIndex = opt "tabIndex" -- union
text :: Option DropdownOption (String)
text = opt "text"
trigger :: Option DropdownOption (UnknownType)
trigger = opt "trigger" -- custom
value :: Option DropdownOption (UnknownType)
value = opt "value" -- union
upward :: Option DropdownOption (Boolean)
upward = opt "upward"
