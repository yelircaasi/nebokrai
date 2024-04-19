module Nebokrai.Derivation.Planning (derivePlan) where

import Nebokrai.Entities.Plan (Plan(..))
import Nebokrai.Entities.Calendar (Calendar)
import Nebokrai.Entities.Routine (Routine)
import Nebokrai.Entities.Roadmap (Roadmap)
import Nebokrai.Config (Config)

derivePlan :: Config -> Calendar -> [Routine] -> [Roadmap] -> Plan
derivePlan config calendar routines roadmaps = Plan { priority = 50
    , duration = 30
    , name = "some plan"
    }
