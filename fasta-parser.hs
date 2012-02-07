import System.IO
import Data.List

parseFasta :: [(String,String)] -> [String] -> [(String, String)]
parseFasta acc [] = acc
parseFasta acc (x:xs)
    | isPrefixOf ">" x == True = parseFasta ((x, "") : acc) xs
    | otherwise = parseFasta (appendString acc x) xs

appendString :: [(String,String)] -> String -> [(String, String)]
appendString acc newstring = case acc of (name,seq):xs -> (name,seq++newstring):xs
                                         _ -> [(newstring, "")]

main = do
	content <- readFile "1HNN.fasta"
	let fasta = parseFasta [] (lines content)
	mapM print fasta


