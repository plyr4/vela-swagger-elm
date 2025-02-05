{-
   Vela server
   API for the Vela server

   OpenAPI spec version: 0.23.2
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.Users exposing (createToken, createUser, deleteToken, deleteUser, getCurrentUser, getSourceRepos, getUser, listUsers, updateCurrentUser, updateUser)

import Data.User exposing (User, userDecoder, userEncoder)
import Data.Repo exposing (Repo, repoDecoder)
import Data.Error exposing (Error, errorDecoder)
import Data.Token exposing (Token, tokenDecoder)
import Data.String exposing (Decode.string, String)
import Http
import Json.Decode as Decode


basePath : String
basePath =
    "http://localhost"


{-
   Create a token for the current authenticated user
-}
createToken : Http.Request Token
createToken =
    { method = "POST"
    , url = basePath ++ "/api/v1/user/token"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson tokenDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Create a user for the configured backend
-}
createUser : User -> Http.Request User
createUser model =
    { method = "POST"
    , url = basePath ++ "/api/v1/users"
    , headers = []
    , body = Http.jsonBody <| userEncoder model
    , expect = Http.expectJson userDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Delete a token for the current authenticated user
-}
deleteToken : Http.Request String
deleteToken =
    { method = "DELETE"
    , url = basePath ++ "/api/v1/user/token"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson Decode.string
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Delete a user for the configured backend
-}
deleteUser : String -> Http.Request String
deleteUser user =
    { method = "DELETE"
    , url = basePath ++ "/api/v1/users/" ++ user
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson Decode.string
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Retrieve the current authenticated user from the configured backend
-}
getCurrentUser : Http.Request User
getCurrentUser =
    { method = "GET"
    , url = basePath ++ "/api/v1/user"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson userDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Retrieve a list of repos for the current authenticated user
-}
getSourceRepos : Http.Request Repo
getSourceRepos =
    { method = "GET"
    , url = basePath ++ "/api/v1/user/source/repos"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson repoDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Retrieve a user for the configured backend
-}
getUser : String -> Http.Request User
getUser user =
    { method = "GET"
    , url = basePath ++ "/api/v1/users/" ++ user
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson userDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Retrieve a list of users for the configured backend
-}
listUsers : Http.Request (List User)
listUsers =
    { method = "GET"
    , url = basePath ++ "/api/v1/users"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson (Decode.list userDecoder)
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Update the current authenticated user in the configured backend
-}
updateCurrentUser : User -> Http.Request User
updateCurrentUser model =
    { method = "PUT"
    , url = basePath ++ "/api/v1/user"
    , headers = []
    , body = Http.jsonBody <| userEncoder model
    , expect = Http.expectJson userDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Update a user for the configured backend
-}
updateUser : String -> User -> Http.Request User
updateUser user model =
    { method = "PUT"
    , url = basePath ++ "/api/v1/users/" ++ user
    , headers = []
    , body = Http.jsonBody <| userEncoder model
    , expect = Http.expectJson userDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


