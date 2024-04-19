module Nebokrai.Config (Config) where

data Config = Config
    { priority :: Int
    , duration :: Int
    , name :: String
    } deriving (Show)