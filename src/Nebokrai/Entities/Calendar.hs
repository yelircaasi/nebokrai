module Nebokrai.Entities.Calendar (Calendar(..)) where

data Calendar = Calendar
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)