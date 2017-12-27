module SemanticUI.Visibility where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import SemanticUI (EventHandlerOpt, UnknownType, Node)
foreign import visibilityClass :: ReactClass VisibilityProps
foreign import data VisibilityOption :: Type
newtype VisibilityProps = VisibilityProps Foreign
visibilityProps :: Options VisibilityOption -> VisibilityProps
visibilityProps = VisibilityProps <<< options
visibility :: Options VisibilityOption -> Array ReactElement -> ReactElement
visibility opts = createElement visibilityClass (visibilityProps opts)
as :: Option VisibilityOption (UnknownType)
as = opt "as" -- custom
children :: Option VisibilityOption (Node)
children = opt "children"
context :: Option VisibilityOption (UnknownType)
context = opt "context" -- object
continuous :: Option VisibilityOption (Boolean)
continuous = opt "continuous"
fireOnMount :: Option VisibilityOption (Boolean)
fireOnMount = opt "fireOnMount"
onBottomPassed :: Option VisibilityOption (EventHandlerOpt)
onBottomPassed = opt "onBottomPassed"
onBottomPassedReverse :: Option VisibilityOption (EventHandlerOpt)
onBottomPassedReverse = opt "onBottomPassedReverse"
onBottomVisible :: Option VisibilityOption (EventHandlerOpt)
onBottomVisible = opt "onBottomVisible"
onBottomVisibleReverse :: Option VisibilityOption (EventHandlerOpt)
onBottomVisibleReverse = opt "onBottomVisibleReverse"
offset :: Option VisibilityOption (UnknownType)
offset = opt "offset" -- union
once :: Option VisibilityOption (Boolean)
once = opt "once"
onPassed :: Option VisibilityOption (UnknownType)
onPassed = opt "onPassed" -- object
onPassing :: Option VisibilityOption (EventHandlerOpt)
onPassing = opt "onPassing"
onPassingReverse :: Option VisibilityOption (EventHandlerOpt)
onPassingReverse = opt "onPassingReverse"
onOffScreen :: Option VisibilityOption (EventHandlerOpt)
onOffScreen = opt "onOffScreen"
onOnScreen :: Option VisibilityOption (EventHandlerOpt)
onOnScreen = opt "onOnScreen"
onTopPassed :: Option VisibilityOption (EventHandlerOpt)
onTopPassed = opt "onTopPassed"
onTopPassedReverse :: Option VisibilityOption (EventHandlerOpt)
onTopPassedReverse = opt "onTopPassedReverse"
onTopVisible :: Option VisibilityOption (EventHandlerOpt)
onTopVisible = opt "onTopVisible"
onTopVisibleReverse :: Option VisibilityOption (EventHandlerOpt)
onTopVisibleReverse = opt "onTopVisibleReverse"
onUpdate :: Option VisibilityOption (EventHandlerOpt)
onUpdate = opt "onUpdate"
