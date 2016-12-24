module Sawmill.DOM.Document
    ( body
    , docAddEventListener
    , docRemoveEventListener
    , docDispatchEvent
    ) where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Sawmill.DOM.Eff (DOM)
import Sawmill.DOM.Types (Element, Event)

foreign import body :: forall eff. Eff (dom :: DOM | eff) (Maybe Element)
foreign import docAddEventListener :: forall eff1. String -> (forall eff2. Event -> Eff (dom :: DOM | eff2) Unit) -> Boolean -> Eff (dom :: DOM | eff1) Unit
foreign import docRemoveEventListener :: forall eff1. String -> (forall eff2. Event -> Eff (dom :: DOM | eff2) Unit) -> Boolean -> Eff (dom :: DOM | eff1) Unit
foreign import docDispatchEvent :: forall eff. Event -> Eff (dom :: DOM | eff) Unit
