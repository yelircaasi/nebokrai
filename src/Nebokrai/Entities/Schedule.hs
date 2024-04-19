module Nebokrai.Entities.Schedule (Schedule(..)) where

data Schedule = Schedule
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)