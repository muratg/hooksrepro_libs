
module CounterClass (counter) where

import Prelude

import React.Basic (Component, JSX, createComponent, make)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)

component :: Component Props 
component = createComponent "Counter"

type Props = { } 


counter :: Props -> JSX
counter = make component { initialState, render }
  where
    initialState = { counter: 0 }
    
    render self =
      R.div_
            [ R.h1_ [ R.text "Counter (PS, class)" ]
            , R.p_ [ R.text $ "You clicked " <> show self.state.counter <>" times"]
            , R.button
                { onClick: capture_ $ self.setState \s -> s { counter = s.counter + 1 }
                , children: [ R.text "Click me" ]
                }
            ]
