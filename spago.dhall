{-
Welcome to a Spago project!
You can edit this file as you like.

    "arrays",
    "console",
    "effect",
    "foldable-traversable",
    "lists",
    "math",
    "prelude",
    "psci-support",
    "strings"

-}
{ name =
    "my-project"
, dependencies =
    [ "arrays"
    , "console"
    , "effect"
    , "foldable-traversable"
    , "lists"
    , "math"
    , "prelude"
    , "psci-support"
    , "quickcheck"
    , "react-basic"
    , "react-basic-hooks"
    , "strings"
    ]
, packages =
    ./packages.dhall
}
