module Nebokrai.Entities.Declaration (Declaration(..)) where

data Declaration = Declaration
    { config :: Config
    , roadmaps :: Roadmaps
    , calendar :: Calendar
    , routines :: [Routine]
    } deriving (Show)