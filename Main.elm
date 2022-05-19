module Main exposing (..)

import Browser exposing (sandbox)
--import Html exposing (Html)
--import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import Css exposing (..)
import Html.Styled as Html exposing (..)
import Html.Styled.Attributes as Attr exposing (css, href, src)
import Html.Styled.Events exposing (onClick)
--import Svg as Svg exposing (..)
--import Svg.Attributes exposing (..)
import Tailwind.Utilities as Tw exposing (globalStyles)
import Tailwind.Breakpoints as Bp



-- MAIN

main : Program () Model Msg
main = Browser.sandbox
       { init = initialModel
       , view = view  >> toUnstyled
       , update = update
       }



-- MODEL


type alias Model =
  { content : String }


initialModel : Model
initialModel =
  { content = "" 
--  , column = ""
 -- , row = ""
  }


focusWithin : List Css.Style -> Css.Style
focusWithin =
    Css.pseudoClass "focus-within"

-- UPDATE


type Msg
  = Change String
  --| NewColumn
  --| NewRow


update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }
    --NewColumn ->
    --{model | column = NewColView}
    
    --NewRow ->
    --{model | row = NewRowView}
    

{--
NewColView =  div []
    [ input [value model.content, onInput Change ] []
    , div [] [ text (model.content) 
    , input [value model.content, onInput Change ] []
    , div [] [ text (model.content) ]

NewRowView = div []
    [ input [value model.content, onInput Change ] []
    , div [] [ text (model.content) ] --}


-- VIEW----

view : Model -> Html Msg
view model = Html.div
        [ css
            [ Tw.relative
            , Tw.overflow_x_auto
            , Tw.shadow_md
            , Bp.sm
                [ Tw.rounded_lg
                ]
            ]
        ]
        [ Html.table
            [ css
                [ Tw.w_full
                , Tw.text_sm
                , Tw.text_left
                , Tw.text_gray_500
                , Bp.sm
                    [ Tw.text_gray_400
                    ]
                ]
            ]
            [ Html.thead
                [ css
                    [ Tw.text_xs
                    , Tw.text_gray_700
                    , Tw.uppercase
                    , Tw.bg_gray_50
                    , Bp.sm
                        [Tw.bg_gray_700
                        , Tw.text_gray_400
                        ]
                    ]
                ]
                [ Html.tr []
                    [ Html.th
                        [ Attr.scope "col"
                        , css
                            [ Tw.px_6
                            , Tw.py_3
                            ]
                        ]
                        [ Html.text "Product name" ]
                    , Html.th
                        [ Attr.scope "col"
                        , css
                            [ Tw.px_6
                            , Tw.py_3
                            ]
                        ]
                        [ Html.text "Color" ]
                    , Html.th
                        [ Attr.scope "col"
                        , css
                            [ Tw.px_6
                            , Tw.py_3
                            ]
                        ]
                        [ Html.text "Category" ]
                    , Html.th
                        [ Attr.scope "col"
                        , css
                            [ Tw.px_6
                            , Tw.py_3
                            ]
                        ]
                        [ Html.text "Price" ]
                    , Html.th
                        [ Attr.scope "col"
                        , css
                            [ Tw.px_6
                            , Tw.py_3
                            ]
                        ]
                        [ span
                            [ css
                                [ Tw.sr_only
                                ]
                            ]
                            [ Html.text "Edit" ]
                        ]
                    ]
                ]
            , Html.tbody []
                [ Html.tr
                    [ css
                        [ Tw.border_b
                        , Bp.sm
                            [ Tw.bg_gray_800
                            , Tw.border_gray_700
                            ]
                        , Css.nthChild "even"
                            [ Tw.bg_gray_50
                            , Bp.sm
                                [ Tw.bg_gray_700
                                ]
                            ]
                        , Css.nthChild "odd"
                            [ Tw.bg_white
                            , Bp.sm
                                [ Tw.bg_gray_800
                                ]
                            ]
                        ]
                    ]
                    [ Html.th
                        [ Attr.scope "row"
                        , css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.font_medium
                            , Tw.text_gray_900
                            , Tw.whitespace_nowrap
                            , Bp.sm
                                [ Tw.text_white
                                ]
                            ]
                        ]
                        [ Html.text "Apple MacBook Pro 17" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Sliver" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Laptop" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "$2999" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.text_right
                            ]
                        ]
                        [ Html.a
                            [ Attr.href "#"
                            , css
                                [ Tw.font_medium
                                , Tw.text_blue_600
                                , Bp.sm
                                    [ Tw.text_blue_500
                                    ]
                                , Css.hover
                                    [ Tw.underline
                                    ]
                                ]
                            ]
                            [ Html.text "Edit" ]
                        ]
                    ]
                , Html.tr
                    [ css
                        [ Tw.border_b
                        , Bp.sm
                            [ Tw.bg_gray_800
                            , Tw.border_gray_700
                            ]
                        , Css.nthChild "even"
                            [ Tw.bg_gray_50
                            , Bp.sm
                                [ Tw.bg_gray_700
                                ]
                            ]
                        , Css.nthChild "odd"
                            [ Tw.bg_white
                            , Bp.sm
                                [ Tw.bg_gray_800
                                ]
                            ]
                        ]
                    ]
                    [ Html.th
                        [ Attr.scope "row"
                        , css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.font_medium
                            , Tw.text_gray_900
                            , Tw.whitespace_nowrap
                            , Bp.sm
                                [ Tw.text_white
                                ]
                            ]
                        ]
                        [ Html.text "Microsoft Surface Pro" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "White" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Laptop PC" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "$1999" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.text_right
                            ]
                        ]
                        [ Html.a
                            [ href "#"
                            , css
                                [ Tw.font_medium
                                , Tw.text_blue_600
                                , Bp.sm
                                    [ Tw.text_blue_500
                                    ]
                                , Css.hover
                                    [ Tw.underline
                                    ]
                                ]
                            ]
                            [ Html.text "Edit" ]
                        ]
                    ]
                , Html.tr
                    [ css
                        [ Tw.border_b
                        , Bp.sm
                            [ Tw.bg_gray_800
                            , Tw.border_gray_700
                            ]
                        , Css.nthChild "even"
                            [ Tw.bg_gray_50
                            , Bp.sm
                                [ Tw.bg_gray_700
                                ]
                            ]
                        , Css.nthChild "odd"
                            [ Tw.bg_white
                            , Bp.sm
                                [ Tw.bg_gray_800
                                ]
                            ]
                        ]
                    ]
                    [ Html.th
                        [ Attr.scope "row"
                        , css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.font_medium
                            , Tw.text_gray_900
                            , Tw.whitespace_nowrap
                            , Bp.sm
                                [ Tw.text_white
                                ]
                            ]
                        ]
                        [ Html.text "Magic Mouse 2" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Black" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Accessories" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "$99" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.text_right
                            ]
                        ]
                        [ Html.a
                            [ href "#"
                            , css
                                [ Tw.font_medium
                                , Tw.text_blue_600
                                , Bp.sm
                                    [ Tw.text_blue_500
                                    ]
                                , Css.hover
                                    [ Tw.underline
                                    ]
                                ]
                            ]
                            [ Html.text "Edit" ]
                        ]
                    ]
                , Html.tr
                    [ css
                        [ Tw.border_b
                        , Bp.sm
                            [ Tw.bg_gray_800
                            , Tw.border_gray_700
                            ]
                        , Css.nthChild "even"
                            [ Tw.bg_gray_50
                            , Bp.sm
                                [ Tw.bg_gray_700
                                ]
                            ]
                        , Css.nthChild "odd"
                            [ Tw.bg_white
                            , Bp.sm
                                [ Tw.bg_gray_800
                                ]
                            ]
                        ]
                    ]
                    [ Html.th
                        [ Attr.scope "row"
                        , css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.font_medium
                            , Tw.text_gray_900
                            , Tw.whitespace_nowrap
                            , Bp.sm
                                [ Tw.text_white
                                ]
                            ]
                        ]
                        [ Html.text "Google Pixel Phone" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Gray" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Phone" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "$799" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.text_right
                            ]
                        ]
                        [ Html.a
                            [ href "#"
                            , css
                                [ Tw.font_medium
                                , Tw.text_blue_600
                                , Bp.sm
                                    [ Tw.text_blue_500
                                    ]
                                , Css.hover
                                    [ Tw.underline
                                    ]
                                ]
                            ]
                            [ Html.text "Edit" ]
                        ]
                    ]
                , Html.tr
                    [ css
                        [ Css.nthChild "even"
                            [ Tw.bg_gray_50
                            , Bp.sm
                                [ Tw.bg_gray_700
                                ]
                            ]
                        , Css.nthChild "odd"
                            [ Tw.bg_white
                            , Bp.sm
                                [ Tw.bg_gray_800
                                ]
                            ]
                        ]
                    ]
                    [ Html.th
                        [ Attr.scope "row"
                        , Attr.css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.font_medium
                            , Tw.text_gray_900
                            , Tw.whitespace_nowrap
                            , Bp.sm
                                [ Tw.text_white
                                ]
                            ]
                        ]
                        [ Html.text "Apple Watch 5" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Red" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "Wearables" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            ]
                        ]
                        [ Html.text "$999" ]
                    , Html.td
                        [ css
                            [ Tw.px_6
                            , Tw.py_4
                            , Tw.text_right
                            ]
                        ]
                        [ Html.a
                            [ href "#"
                            , css
                                [ Tw.font_medium
                                , Tw.text_blue_600
                                , Bp.sm
                                    [ Tw.text_blue_500
                                    ]
                                , Css.hover
                                    [ Tw.underline
                                    ]
                                ]
                            ]
                            [ Html.text "Edit" ]
                        ]
                    ]
                ]
            ]
        ]
    
    