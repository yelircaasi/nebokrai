{-# LANGUAGE OverloadedStrings #-}
module Nebokrai.CLI (main) where

-- import Options.Applicative (execParser, fullDesc, progDesc, Parser, subparser, command, <*>, <$>, <**>, header)
import Options.Applicative ((<*>), (<$>), Parser, execParser, info, fullDesc, progDesc, header, helper, switch, strOption, command, subparser, progDesc, info, long, short, metavar, value, help, (<**>))

--TODO: deep dive on operators <>, <*>, <$>, <**> and the Parser type
-- (<>)    :: 
-- (<*>)   :: 
-- (<$>)   :: 
-- (<**>)  :: 
-- Parser  :: 


data NebokraiSubcommand
    = Derive
    | Validate
    | Show
    | Track
    deriving (Eq, Show)

data Options = Options
    { subCommand :: NebokraiSubcommand
    , greeting :: String
    , quiet :: Bool
    }

-- nebokraiSubcommand :: Parser NebokraiSubcommand
-- nebokraiSubcommand = subparser $
--     command "derive" (info (pure Derive) (progDesc "Derive something")) <>
--     command "validate" (info (pure Validate) (progDesc "Validate something")) <>
--     command "show" (info (pure Show) (progDesc "Show something")) <>
--     command "track" (info (pure Track) (progDesc "Track something"))
--
-- options :: Parser Options
-- options = Options
--     <$> nebokraiSubcommand
--     <*> strOption
--         ( long "greeting"
--        <> short 'g'
--        <> metavar "STRING"
--        <> value "Hello"
--        <> help "Set the greeting message" )
--     <*> switch
--         ( long "quiet"
--        <> short 'q'
--        <> help "Suppress output" )
--
-- greet :: Options -> IO ()
-- greet opts = do
--     let message = greeting opts ++ ", world!"
--     if quiet opts
--         then return ()
--         else putStrLn message
--
-- main :: IO ()
-- main = greet =<< execParser opts
--   where
--     opts = info (options <**> helper)
--       ( fullDesc
--      <> progDesc "A command-line interface for Nebokrai"
--      <> header "nebokrai - a CLI for Nebokrai" )

nebokraiSubcommand :: Parser NebokraiSubcommand
nebokraiSubcommand = subparser $
    command "derive" (info (pure Derive) (progDesc "Derive something")) <>
    command "validate" (info (pure Validate) (progDesc "Validate something")) <>
    command "show" (info (pure Show) (progDesc "Show something")) <>
    command "track" (info (pure Track) (progDesc "Track something"))

options :: Parser Options
options = Options
    <$> nebokraiSubcommand
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

derive :: IO ()
derive = putStrLn "Deriving something..."

validate :: IO ()
validate = putStrLn "Validating something..."

showSomething :: IO ()
showSomething = putStrLn "Showing something..."

track :: IO ()
track = putStrLn "Tracking something..."

executeSubcommand :: NebokraiSubcommand -> IO ()
executeSubcommand Derive   = derive
executeSubcommand Validate = validate
executeSubcommand Show     = showSomething
executeSubcommand Track    = track

main :: IO ()
main = do
    opts <- execParser optsInfo
    executeSubcommand (subCommand opts)
  where
    optsInfo = info (options <**> helper)
      ( fullDesc
     <> progDesc "A command-line interface for Nebokrai"
     <> header "nebokrai - a CLI for Nebokrai" )
