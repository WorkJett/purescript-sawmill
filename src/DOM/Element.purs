module Sawmill.DOM.Element
    ( addEventListener
    , removeEventListener
    , dispatchEvent
    , childElements
    , parentElement
    , appendChild
    , hasChildElements
    , insertBefore
    , removeChild
    , replaceChild
    , className
    , setClassName
    , id
    , setId
    , innerHTML
    , setInnerHTML
    , tagName
    , getAttribute
    , setAttribute
    , hasAttribute
    , removeAttribtute
    , getElementsByClassName
    , getElementsByTagName
    , querySelector
    , querySelectorAll
    ) where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Sawmill.DOM.Eff (DOM)
import Sawmill.DOM.Types (Element, Event)
-- EventTarget
foreign import addEventListener
    :: forall eff1. Element
    -> String
    -> (forall eff2. Event -> Eff (dom :: DOM | eff2) Unit)
    -> Boolean
    -> Eff (dom :: DOM | eff1) Unit
foreign import removeEventListener
    :: forall eff1. Element
    -> String
    -> (forall eff2. Event -> Eff (dom :: DOM | eff2) Unit)
    -> Boolean
    -> Eff (dom :: DOM | eff1) Unit
foreign import dispatchEvent :: forall eff. Element -> Event -> Eff (dom :: DOM | eff) Unit
-- Node
foreign import childElements :: forall eff. Element -> Eff (dom :: DOM | eff) (Array Element)
foreign import parentElement :: forall eff. Element -> Eff (dom :: DOM | eff) (Maybe Element)
foreign import appendChild :: forall eff. Element -> Element -> Eff (dom :: DOM | eff) Element
foreign import hasChildElements :: forall eff. Element -> Eff (dom :: DOM |eff) Boolean
foreign import insertBefore :: forall eff. Element -> Element -> Element -> Eff (dom :: DOM | eff) Element
foreign import removeChild :: forall eff. Element -> Element -> Eff (dom :: DOM | eff) Element
foreign import replaceChild :: forall eff. Element -> Element -> Element -> Eff (dom :: DOM | eff) Element
-- Element
foreign import className :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import setClassName :: forall eff. Element -> (String -> String) -> Eff (dom :: DOM | eff) Element
foreign import id :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import setId :: forall eff. Element -> (String -> String) -> Eff (dom :: DOM | eff) Element
foreign import innerHTML :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import setInnerHTML :: forall eff. Element -> (String -> String) -> Eff (dom :: DOM | eff) Element
foreign import tagName :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import getAttribute :: forall eff. Element -> String -> Eff (dom :: DOM | eff) String
foreign import setAttribute :: forall eff. Element -> String -> (String -> String) -> Eff (dom :: DOM | eff) Element
foreign import hasAttribute :: forall eff. Element -> String -> Eff (dom :: DOM | eff) Boolean
foreign import removeAttribtute :: forall eff. Element -> String -> Eff (dom :: DOM | eff) Element
foreign import getElementsByClassName :: forall eff. Element -> String -> Eff (dom :: DOM | eff) (Array Element)
foreign import getElementsByTagName :: forall eff. Element -> String -> Eff (dom :: DOM | eff) (Array Element)
foreign import querySelector :: forall eff. Element -> String -> Eff (dom :: DOM | eff) (Maybe Element)
foreign import querySelectorAll :: forall eff. Element -> String -> Eff (dom :: DOM | eff) (Array Element)
