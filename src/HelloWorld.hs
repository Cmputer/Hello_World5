module Main where

main :: IO ()
main = do
  putStrLn "Hello, world!"
  putStrLn "Press the enter key to continue..."
  input <- getLine
  let loop = do
        putStrLn "Incorrect input. Please just press enter!"
        input' <- getLine
        if null input' then return () else loop
  if null input then printMessage else loop

printMessage :: IO ()
printMessage = putStrLn $ unlines
  [ "This is a simple Haskell program that can be cloned and used by the user to learn more about GitHub."
  , "This same program is available in multiple different languages to give a good idea of how repositories work."
  , "Please refer to the README.md file in his repo to learn more about adding this to your OWN GitHub"
  , "and how to eventually showcase your own code!"
  ]
