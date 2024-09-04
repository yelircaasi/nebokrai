module Nebokrai.Entities.RefinementTypes (DurationLessThan720) where

import Refined (LessThan, GreaterThan, LessThanEqual, GreaterThanEqual)

type DurationLessThan720 = 
type TimeInt = Refined (And (LessThanEqual 720) (GreaterThanEqual 0)) Int -- TODO: rename to Seconds
type UnitIntervalClosed = Refined (And (GreaterThanEqual 0.0) (LessThan 1.0)) Float
type UnitIntervalOpen = Refined (And (GreaterThan 0.0) (LessThan 1.0)) Float
type TaskID = Refined (And (GreaterThan 1) (LessThan 6)) String
type ProjectID = Refined (And (GreaterThan 1) (LessThan 6)) String
type RoadmapID = Refined (And (GreaterThan 1) (LessThan 6)) String
