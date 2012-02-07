import System.IO
import Control.Monad
import Data.List
import Data.Char

isCA :: String -> Bool
isCA x = if (x == "CA") then True else False

trim :: [Char] -> [Char]
trim = f . f where f = reverse . dropWhile isSpace

atomType :: [Char] -> [Char]
atomType = trim . take 3 . drop 13

atomLines :: [Char] -> [[Char]]
atomLines = filter (isPrefixOf "ATOM") . lines

caAtoms :: [[Char]] -> [[Char]]
caAtoms = filter (isCA . atomType) 

main = do
  handle <- openFile "1hnn.pdb" ReadMode
  contents <- hGetContents handle
  mapM print . caAtoms . atomLines $ contents
  hClose handle
  
  
