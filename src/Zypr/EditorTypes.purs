module Zypr.EditorTypes where

import Prelude
import Effect (Effect)
import React (ReactElement, ReactThis)
import Zypr.Location (Location)
import Zypr.SyntaxTheme (SyntaxTheme, Res)

type EditorThis
  = ReactThis EditorProps EditorState

type EditorGiven
  = { state :: EditorState, render :: Effect ReactElement, componentDidMount :: Effect Unit }

type EditorProps
  = { stateInit :: EditorState }

type EditorState
  = { mode :: EditorMode
    , syntaxTheme :: SyntaxTheme
    , console :: Array ConsoleItem
    }

data EditorMode
  = CursorMode { location :: Location }
  | SelectMode { locationStart :: Location, locationEnd :: Location }

type ConsoleItem
  = { type_ :: ConsoleItemType, res :: Res }

data ConsoleItemType
  = ConsoleItemError
  | ConsoleItemInfo
  | ConsoleItemLog