import Control.Monad
import Data.Char

-- this will be called by another bit of code
-- it loops forever, or until the power is turned off!
-- forever can be terminated with CTRL-D

main = forever $ do
  l <- getLine
  putStrLn $ map toUpper l