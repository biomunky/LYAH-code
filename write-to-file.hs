import System.IO
import Data.Char

main = do
  contents <- readFile "haiku.txt"
  writeFile "haiku-caps.txt" (map toUpper contents)