module Main where

import qualified Nebokrai ( testFunc
                          , readData
                          , writeData
                          , cli
                          , tui
                          , derive
                          , edit
                          , track
                          
                          )

main :: IO ()
main = do

  Nebokrai.cli
  -- putStrLn "Hello, Haskell!"
  -- Nebokrai.testFunc
  -- Nebokrai.tui
  -- Nebokrai.readData
  -- Nebokrai.writeData
  -- Nebokrai.edit
  -- Nebokrai.track

