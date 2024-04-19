module Nebokrai.Entities.Day (Day(..)) where

data Day = Day
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)