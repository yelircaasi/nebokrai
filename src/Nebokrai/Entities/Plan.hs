module Nebokrai.Entities.Plan (Plan(..)) where

data Plan = Plan
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)