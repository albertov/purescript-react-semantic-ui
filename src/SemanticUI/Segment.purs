module SemanticUI.Segment where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import segmentClass :: ReactClass SegmentProps
foreign import data SegmentOption :: Type
newtype SegmentProps = SegmentProps Foreign
segmentProps :: Options SegmentOption -> SegmentProps
segmentProps = SegmentProps <<< options
segment :: Options SegmentOption -> Array ReactElement -> ReactElement
segment opts = createElement segmentClass (segmentProps opts)
as :: Option SegmentOption (UnknownType)
as = opt "as" -- custom
attached :: Option SegmentOption (UnknownType)
attached = opt "attached" -- union
basic :: Option SegmentOption (Boolean)
basic = opt "basic"
children :: Option SegmentOption (Node)
children = opt "children"
circular :: Option SegmentOption (Boolean)
circular = opt "circular"
className :: Option SegmentOption (String)
className = opt "className"
clearing :: Option SegmentOption (Boolean)
clearing = opt "clearing"
color :: Option SegmentOption (UnknownType)
color = opt "color" -- enum
compact :: Option SegmentOption (Boolean)
compact = opt "compact"
content :: Option SegmentOption (UnknownType)
content = opt "content" -- custom
disabled :: Option SegmentOption (Boolean)
disabled = opt "disabled"
floated :: Option SegmentOption (UnknownType)
floated = opt "floated" -- enum
inverted :: Option SegmentOption (Boolean)
inverted = opt "inverted"
loading :: Option SegmentOption (Boolean)
loading = opt "loading"
padded :: Option SegmentOption (UnknownType)
padded = opt "padded" -- union
piled :: Option SegmentOption (Boolean)
piled = opt "piled"
raised :: Option SegmentOption (Boolean)
raised = opt "raised"
secondary :: Option SegmentOption (Boolean)
secondary = opt "secondary"
size :: Option SegmentOption (UnknownType)
size = opt "size" -- enum
stacked :: Option SegmentOption (Boolean)
stacked = opt "stacked"
tertiary :: Option SegmentOption (Boolean)
tertiary = opt "tertiary"
textAlign :: Option SegmentOption (UnknownType)
textAlign = opt "textAlign" -- enum
vertical :: Option SegmentOption (Boolean)
vertical = opt "vertical"
