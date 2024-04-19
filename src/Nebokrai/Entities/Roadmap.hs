module Nebokrai.Entities.Roadmap (Roadmap(..)) where

data Roadmap = Roadmap
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)