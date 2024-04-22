module Nebokrai.Entities.Routine (Routine(..)) where

import Data.Time (Day, DayOfWeek, TimeOfDay, LocalTime)

data Routine = Routine
    { priority          :: UnitInterval
    , name              :: String
    , items             :: [Entry]
    , defaultDuration   :: TimeInt
    , defaultStart      :: TimeOfDay 
    , defaultEnd        :: TimeOfDay 
    , daysOfWeek        :: [DayOfWeek]
    , isFixed           :: Boolean
    , validSubentryTags :: [String]
    , validParentTags   :: [String]
    , defaultOrder      :: UnitIntClosed
    , defaultLength     :: TimeInt
    , startEarliest     :: TimeOfDay
    , endEarliest       :: TimeOfDay
    , startLatest       :: TimeOfDay
    , endLatest         :: TimeOfDay
    , subentries        :: [Task]
    , notes             :: String
    } deriving (Show)