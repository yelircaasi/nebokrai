module Nebokrai.Entities.Project (Project(..)) where

data Project = Project
    { name              :: String
    , projectID         :: ProjectID
    , priority          :: UnitInterval
    , defaultDuration   :: TimeInt
    , isFixed           :: Boolean
    , validSubentryTags :: [String]
    , validParentTags   :: [String]
    , defaultOrder      :: UnitIntClosed
    , defaultLength     :: TimeInt
    , startDate         :: TimeOfDay
    , endDate           :: TimeOfDay
    , startEarliest     :: TimeOfDay
    , endEarliest       :: TimeOfDay
    , startLatest       :: TimeOfDay
    , endLatest         :: TimeOfDay
    , subentries        :: [Task]
    , notes             :: String
    } deriving (Show)