module Nebokrai.Entities.Routine (Routine(..)) where

data Routine = Routine
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)