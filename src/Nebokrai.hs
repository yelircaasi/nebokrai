module Nebokrai ( testFunc
                , readData
                , writeData
                , cli
                , tui
                , derive
                , edit
                , track
                ) where

import Nebokrai.Entities (Plan, Schedule, Calendar, Day, Roadmap, Project, Task, Entry, Routine)
import Nebokrai.Config (Config)
import Nebokrai.Derivation.Planning (derivePlan)
import Nebokrai.Derivation.Scheduling (deriveSchedule)
import qualified Nebokrai.CLI (main)

testFunc :: IO ()
testFunc = putStrLn "executing testFunc"

readData :: IO ()
readData = putStrLn "readData goes here"

writeData :: IO ()
writeData = putStrLn "writeData goes here"

cli :: IO ()
cli = Nebokrai.CLI.main 

tui :: IO ()
tui = putStrLn "tui goes here"

derive :: Config -> Calendar -> [Routine] -> [Roadmap] -> (Plan, Schedule)
derive config calendar routines roadmaps  = (plan, schedule) where
    plan = derivePlan config calendar routines roadmaps
    schedule = deriveSchedule config calendar routines roadmaps

edit :: IO ()
edit = putStrLn "edit goes here"

track :: IO ()
track = putStrLn "tracking goes here"


