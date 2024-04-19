module Nebokrai.Entities.Declaration (Declaration(..)) where

data Declaration = Declaration
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)