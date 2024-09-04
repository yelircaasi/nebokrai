module Nebokrai.Entities.Entry (Entry(..)) where

import Data.Time (Day, DayOfWeek, TimeOfDay, LocalTime)
import Nebokrai.Entities.RefinementTypes (TimeInt, UnitIntervalClosed)

data Entry = Entry
    { priority          :: UnitInterval
    , name              :: String
    , duration          :: TimeInt
    , validSubentryTags :: [String]
    , validParentTags   :: [String]
    , isFixed           :: Boolean
    -- , isEndAligned      :: Boolean
    , order             :: UnitIntClosed
    , minLength         :: TimeInt
    , normalLength      :: TimeInt
    , idealLength       :: TimeInt
    , maxLength         :: TimeInt
    , startTime         :: TimeOfDay
    , endTime           :: TimeOfDay
    , startTimeEarliest :: TimeOfDay
    , endTimeEarliest   :: TimeOfDay
    , startTimeLatest   :: TimeOfDay
    , endTimedLatest    :: TimeOfDay
    , subentries        :: [Task]
    --, projectID         :: ProjectID
    , notes             :: String
    } deriving (Show)
