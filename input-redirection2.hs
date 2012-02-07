--rather than use the forever control monad
--use getContents, it's lazy and saves us typing

import Data.Char

main = do
  lines <- getContents
  putStrLn $ map toUpper lines