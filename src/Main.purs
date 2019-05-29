module Main where

import Prelude

import React.Basic.Hooks(element)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Exception (throw)
import React.Basic.DOM (render)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

import CounterHooks (mkCounter)
import CounterClass (counter)

renderWithHooks :: Boolean
renderWithHooks = false

main :: Effect Unit
main = do
  container <- getElementById "container" =<< (map toNonElementParentNode $ document =<< window)
  cc <- mkCounter
  case container of
    Nothing -> throw "Container element not found...."
    Just c  ->
      if renderWithHooks
        then
          let cntHooks = element cc  { } 
          in render cntHooks c
        else 
          let cnt = counter {  }
          in render cnt c
