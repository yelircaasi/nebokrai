module Nebokrai.Entities.Day (Day(..)) where

import Nebokrai.Entities.Entry (Entry)
import Data.Time (Day, DayOfWeek, TimeOfDay, LocalTime)
import Refined (LessThan)

data CalendarDay = CalendarDay
    { date :: Day
    , start :: TimeOfDay
    , end :: TimeOfDay
    , entries :: [Entry]
    , routines :: [Entry]
    , notes :: String
    } deriving (Show)