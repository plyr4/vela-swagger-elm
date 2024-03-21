{-
   Vela server
   API for the Vela server

   OpenAPI spec version: 0.23.2
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.PipelinePort exposing (PipelinePort, pipelinePortDecoder, pipelinePortEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Port is the pipeline representation of a port for a step in a pipeline.
-}


type alias PipelinePort =
    {     }


pipelinePortDecoder : Decoder PipelinePort
pipelinePortDecoder =
    decode PipelinePort



pipelinePortEncoder : PipelinePort -> Encode.Value
pipelinePortEncoder model =
    Encode.object
        ]


