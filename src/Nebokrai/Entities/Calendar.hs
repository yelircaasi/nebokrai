module Nebokrai.Entities.Calendar (Calendar(..)) where

import Data.Time (Day, DayOfWeek, TimeOfDay, LocalTime)

data Calendar = Calendar
    { name :: String
    , earliestDate :: Day
    , latestDate :: Day
    , days :: [CalendarDay]
    
    } deriving (Show)