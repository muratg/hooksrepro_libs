module CounterHooks (mkCounter) where

import Prelude

import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (CreateComponent, component, useState, (/\))
import React.Basic.Hooks as React

mkCounter :: CreateComponent {}
mkCounter = do
  component "Counter" \props -> React.do
    counter /\ setCounter <- useState 0

    pure $ R.div_
      [ R.h1_ [ R.text "Counter (PS, useState)" ]
      , R.p_ [ R.text $ "You clicked " <> show counter <>" times"]
      , R.button
          { onClick: handler_ $ setCounter (_ + 1)
          , children: [ R.text "Click me" ]
          }
      ]
