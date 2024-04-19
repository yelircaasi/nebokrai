module Nebokrai.Derivation.Scheduling (deriveSchedule) where

import Nebokrai.Entities.Schedule (Schedule(..))
import Nebokrai.Entities.Calendar (Calendar)
import Nebokrai.Entities.Routine (Routine)
import Nebokrai.Entities.Roadmap (Roadmap)
import Nebokrai.Config (Config)

deriveSchedule :: Config -> Calendar -> [Routine] -> [Roadmap] -> Schedule
deriveSchedule config calendar routines roadmaps = Schedule { priority = 50
    , duration = 30
    , name = "some schedule"
    }
