module Nebokrai.Entities.Task (Task(..)) where

data Task = Task
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)