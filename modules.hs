import qualified Data.List as L
import qualified Data.Char as C
numUniq :: (Eq a) => [a] -> Int
numUniq = length . L.nub

wordLengths :: String -> [Int]
wordLengths x = map (\w -> length w) $ L.words x

wordGroupByLength :: String -> [(String, Int)]
wordGroupByLength = map (\ws -> (head ws, length ws)) . L.group . L.sort . L.words 

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `L.isPrefixOf`) (L.tails haystack)
                              
encode :: Int -> String -> String
encode offset string =  map (\l -> C.chr $ C.ord l + offset) string

decode :: Int -> String -> String
decode offset string = encode (negate offset) string

digitSum :: Int -> Int
digitSum = sum . map C.digitToInt . show


