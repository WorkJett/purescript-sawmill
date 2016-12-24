module Sawmill.DOM.Event
    ( bubbles
    , cancelable
    , currentTarget
    , defaultPrevented
    , eventPhase
    , target
    , timeStamp
    , eventType
    , createEvent
    , isTrusted
    , preventDefault
    , stopPropagation
    ) where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Sawmill.DOM.Eff (DOM)
import Sawmill.DOM.Types (Event, Element)

foreign import bubbles :: forall eff. Event -> Eff (dom :: DOM | eff) Boolean
foreign import cancelable :: forall eff. Event -> Eff (dom :: DOM | eff) Boolean
foreign import currentTarget :: forall eff. Event -> Eff (dom :: DOM | eff) Element
foreign import defaultPrevented :: forall eff. Event -> Eff (dom :: DOM | eff) Boolean
foreign import eventPhase :: forall eff. Event -> Eff (dom :: DOM | eff) Int
foreign import target :: forall eff. Event -> Eff (dom :: DOM | eff) Element
foreign import timeStamp :: forall eff. Event -> Eff (dom :: DOM | eff) Int
foreign import eventType :: forall eff. Event -> Eff (dom :: DOM | eff) String
foreign import createEvent :: forall eff. String -> Eff (dom :: DOM | eff) Event
foreign import isTrusted :: forall eff. Event -> Eff (dom :: DOM | eff) Boolean
foreign import preventDefault :: forall eff. Event -> Eff (dom :: DOM | eff) Unit
foreign import stopPropagation :: forall eff. Event -> Eff (dom :: DOM | eff) Unit
