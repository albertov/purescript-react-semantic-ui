module SemanticUI.Pagination where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import paginationClass :: ReactClass PaginationProps
foreign import data PaginationOption :: Type
newtype PaginationProps = PaginationProps Foreign
paginationProps :: Options PaginationOption -> PaginationProps
paginationProps = PaginationProps <<< options
pagination :: Options PaginationOption -> Array ReactElement -> ReactElement
pagination opts = createElement paginationClass (paginationProps opts)
ariaLabel :: Option PaginationOption (String)
ariaLabel = opt "ariaLabel"
defaultActivePage :: Option PaginationOption (UnknownType)
defaultActivePage = opt "defaultActivePage" -- union
activePage :: Option PaginationOption (UnknownType)
activePage = opt "activePage" -- union
boundaryRange :: Option PaginationOption (UnknownType)
boundaryRange = opt "boundaryRange" -- union
ellipsisItem :: Option PaginationOption (UnknownType)
ellipsisItem = opt "ellipsisItem" -- custom
firstItem :: Option PaginationOption (UnknownType)
firstItem = opt "firstItem" -- custom
lastItem :: Option PaginationOption (UnknownType)
lastItem = opt "lastItem" -- custom
nextItem :: Option PaginationOption (UnknownType)
nextItem = opt "nextItem" -- custom
pageItem :: Option PaginationOption (UnknownType)
pageItem = opt "pageItem" -- custom
prevItem :: Option PaginationOption (UnknownType)
prevItem = opt "prevItem" -- custom
onPageChange :: Option PaginationOption (EventHandlerOpt)
onPageChange = opt "onPageChange"
siblingRange :: Option PaginationOption (UnknownType)
siblingRange = opt "siblingRange" -- union
totalPages :: Option PaginationOption (UnknownType)
totalPages = opt "totalPages" -- union
