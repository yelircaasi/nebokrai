module Nebokrai.Entities.Roadmap (Roadmap(..)) where

data Roadmap = Roadmap
    { priority          :: UnitInterval
    , name              :: String
    , defaultDuration   :: TimeInt
    , isFixed           :: Boolean
    , validSubentryTags :: [String]
    , validParentTags   :: [String]
    --, isEndAligned      :: Boolean
    , defaultOrder      :: UnitIntClosed
    , defaultLength     :: TimeInt
    , startDate         :: TimeOfDay
    , endDate           :: TimeOfDay
    , startEarliest     :: TimeOfDay
    , endEarliest       :: TimeOfDay
    , startLatest       :: TimeOfDay
    , endLatest         :: TimeOfDay
    , subentries        :: [Task]
    --, projectID         :: ProjectID
    , notes             :: String
    } deriving (Show)