import Data.Char

main = do
  line <- getLine
  if null line
    then return () -- terminate the line
         -- this doesn't cause the code to terminate.
         -- return wraps whatever is passed in an io
         -- :t return "foo" tells us that it's a monad m => m [char]
    else do
      putStrLn $ reverseWords line
      main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words