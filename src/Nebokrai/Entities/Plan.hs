module Nebokrai.Entities.Plan (Plan(..)) where

import qualified Data.Map.Strict as Map

data Plan = Plan
    { startDate :: Day
    , endDate :: Day
    , mapping :: Map.Map Dat [Task]
    } deriving (Show)