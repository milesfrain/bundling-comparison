module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text, p)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = init, update = update, view = view }

type alias Model = Int

init : Model
init =
  0

type Msg
  = Increment

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

view : Model -> Html Msg
view model =
  div []
    [ p [] [ text ("You clicked " ++ String.fromInt model ++ " times") ]
    , button [ onClick Increment ] [ text "Click me" ]
    ]
