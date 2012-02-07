import System.IO
import Control.Monad

-- in fileIO we opened a file and printed the contents
-- we had to make sure that the file was closed (which we have 
-- to do using something like python f.close()
-- Like clojure, we can get this done for us: enter withFile

main = do
  withFile "haiku.txt" ReadMode (\handle -> do
                                    contents <- hGetContents handle
                                    putStr contents)
    
-- this is like clojure with-open
-- (with-open [rdr (reader filename)]
--   (line-seq rdr))
--