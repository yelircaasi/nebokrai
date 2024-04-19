{-# LANGUAGE OverloadedStrings #-}
module Nebokrai.CLI (main) where

import Options.Applicative

data NebokraiCommand
    = Derive
    | Validate
    | Show
    | Track
    deriving (Eq, Show)

data Options = Options
    { subCommand :: NebokraiCommand
    , greeting :: String
    , quiet :: Bool
    }

nebokraiCommand :: Parser NebokraiCommand
nebokraiCommand = subparser $
    command "derive" (info (pure Derive) (progDesc "Derive something")) <>
    command "validate" (info (pure Validate) (progDesc "Validate something")) <>
    command "show" (info (pure Show) (progDesc "Show something")) <>
    command "track" (info (pure Track) (progDesc "Track something"))

options :: Parser Options
options = Options
    <$> nebokraiCommand
    <*> strOption
        ( long "greeting"
       <> short 'g'
       <> metavar "STRING"
       <> value "Hello"
       <> help "Set the greeting message" )
    <*> switch
        ( long "quiet"
       <> short 'q'
       <> help "Suppress output" )

greet :: Options -> IO ()
greet opts = do
    let message = greeting opts ++ ", world!"
    if quiet opts
        then return ()
        else putStrLn message

main :: IO ()
main = greet =<< execParser opts
  where
    opts = info (options <**> helper)
      ( fullDesc
     <> progDesc "A command-line interface for Nebokrai"
     <> header "nebokrai - a CLI for Nebokrai" )
