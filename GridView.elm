module GridView exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


initCols =
    [ 1, 2, 3, 4, 5 ]


initRows =
    [ 1, 2, 3, 4, 5 ]


buildGrid cols rows =
    List.concatMap (\col -> List.map (\row -> ( col, row )) rows) cols


type alias Model =
    { rows : List Int, cols : List Int }


initialModel : Model
initialModel =
    { rows = initRows, cols = initCols }


type Msg
    = NewRow
    | NewCol


update : Msg -> Model -> Model
update msg model =
    case msg of
        NewRow ->
            { model | rows = model.rows ++ [ List.length model.rows + 1 ] }

        NewCol ->
            { model | cols = model.cols ++ [ List.length model.cols + 1 ] }


view : Model -> Html Msg
view model =
    let
        grid =
            buildGrid model.cols model.rows
    in
    div []
        [ div [] (List.map (\( cellRow, cellCol ) -> text (String.fromInt cellRow ++ "," ++ String.fromInt cellCol)) grid)
        , button [ onClick NewRow ] [ text "add row" ]
        , button [ onClick NewCol ] [ text "add col" ]
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
