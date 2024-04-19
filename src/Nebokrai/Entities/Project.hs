module Nebokrai.Entities.Project (Project(..)) where

data Project = Project
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)