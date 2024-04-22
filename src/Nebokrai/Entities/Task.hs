module Nebokrai.Entities.Task (Task(..)) where

import Data.Time (Day, DayOfWeek, TimeOfDay, LocalTime)
import Nebokrai.Entities.RefinementTypes (TimeInt, UnitIntervalClosed)

data Task = Task
    { priority      :: UnitInterval
    , name          :: String
    , duration      :: TimeInt
    , isFixed       :: Boolean
    --, isEndAligned  :: Boolean
    , order         :: UnitIntClosed
    , minLength     :: TimeInt
    , idealLength   :: TimeInt
    , maxLength     :: TimeInt
    , start         :: TimeOfDay
    , end           :: TimeOfDay
    , startEarliest :: TimeOfDay
    , endEarliest   :: TimeOfDay
    , startLatest   :: TimeOfDay
    , endLatest     :: TimeOfDay
    , subentries    :: [Task]
    --, projectID     :: ProjectID
    , notes         :: String

    
    } deriving (Show)