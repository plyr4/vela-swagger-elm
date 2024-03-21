{-
   Vela server
   API for the Vela server

   OpenAPI spec version: 0.23.2
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.Step exposing (Step, stepDecoder, stepEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias Step =
    {     }


stepDecoder : Decoder Step
stepDecoder =
    decode Step



stepEncoder : Step -> Encode.Value
stepEncoder model =
    Encode.object
        ]


