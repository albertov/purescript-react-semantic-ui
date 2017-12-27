module SemanticUI.SegmentGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import segmentGroupClass :: ReactClass SegmentGroupProps
foreign import data SegmentGroupOption :: Type
newtype SegmentGroupProps = SegmentGroupProps Foreign
segmentGroupProps :: Options SegmentGroupOption -> SegmentGroupProps
segmentGroupProps = SegmentGroupProps <<< options
segmentGroup :: Options SegmentGroupOption -> Array ReactElement -> ReactElement
segmentGroup opts = createElement segmentGroupClass (segmentGroupProps opts)
as :: Option SegmentGroupOption (UnknownType)
as = opt "as" -- custom
children :: Option SegmentGroupOption (Node)
children = opt "children"
className :: Option SegmentGroupOption (String)
className = opt "className"
compact :: Option SegmentGroupOption (Boolean)
compact = opt "compact"
content :: Option SegmentGroupOption (UnknownType)
content = opt "content" -- custom
horizontal :: Option SegmentGroupOption (Boolean)
horizontal = opt "horizontal"
piled :: Option SegmentGroupOption (Boolean)
piled = opt "piled"
raised :: Option SegmentGroupOption (Boolean)
raised = opt "raised"
size :: Option SegmentGroupOption (UnknownType)
size = opt "size" -- enum
stacked :: Option SegmentGroupOption (Boolean)
stacked = opt "stacked"
