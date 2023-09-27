module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (..)


view model =
    div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ]
            [ img [ src "http://elm-in-action.com/1.jpeg" ] []
            , img [ src "http://elm-in-action.com/2.jpeg" ] []
            , img [ src "http://elm-in-action.com/3.jpeg" ] []
            ]
        ]


main =
    view ""



---- MODEL ----
-- type alias Model =
--     {}
-- init : ( Model, Cmd Msg )
-- init =
--     ( {}, Cmd.none )
-- ---- UPDATE ----
-- type Msg
--     = NoOp
-- update : Msg -> Model -> ( Model, Cmd Msg )
-- update msg model =
--     ( model, Cmd.none )
-- ---- VIEW ----
-- view : Model -> Html Msg
-- view model =
--     div []
--         [ img [ src "/logo.svg" ] []
--         , h1 [] [ text <| withoutDashes "805-145-2222" ]
--         ]
-- ---- PROGRAM ----
-- main : Program () Model Msg
-- main =
--     Browser.element
--         { view = view
--         , init = \_ -> init
--         , update = update
--         , subscriptions = always Sub.none
--         }
-- withoutDashes : String -> String
-- withoutDashes str =
--     let
--         dash =
--             '-'
--         -- isKeepbable character =
--         --     character /= dash
--         isKeepable =
--             \character -> character /= dash
--     in
--     String.filter isKeepable str
