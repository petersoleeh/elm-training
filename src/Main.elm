module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (..)


urlPrefix : String
urlPrefix =
    "http://elm-in-action.com/"


view model =
    div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ]
            (List.map
                (\photo -> viewThumbnail model.selectedUrl photo)
                model.photos
            )
        , img
            [ class "large"
            , src (urlPrefix ++ "large/" ++ model.selectedUrl)
            ]
            []
        ]


viewThumbnail selectedUrl thumb =
    img
        [ src (urlPrefix ++ thumb.url)
        , classList [ ( "selected", selectedUrl == thumb.url ) ]
        ]
        []


initialModel =
    { photos =
        [ { url = "1.jpeg" }
        , { url = "2.jpeg" }
        , { url = "3.jpeg" }
        ]
    , selectedUrl = "1.jpeg"
    }


main =
    view initialModel



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
