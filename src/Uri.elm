module Uri where

{-| Exposing JavaScript's URI-encoding functions in Elm.

These functions encode a Uniform Resource Identifier (URI) component
by replacing each instance of certain characters with their UTF-8
equivalent.

@docs encodeUri, encodeUriComponent
-}


import Native.Uri

{-| Encode a URI. Note that you cannot use this function to encode
form parameters (because the `&` separator will be encoded too). -}
encodeUri : String -> String
encodeUri = Native.Uri.encodeUri

{-| Encode a string. Usually this will be a fragment of a URI, such as
the value of a parameter. -}
encodeUriComponent : String -> String
encodeUriComponent = Native.Uri.encodeUriComponent
