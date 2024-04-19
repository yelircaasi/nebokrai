module Nebokrai.Entities.Entry (Entry(..)) where

data Entry = Entry
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)