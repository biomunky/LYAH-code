import System.IO
import Control.Monad
import Data.List
import Data.Char

-- in fileIO we opened a file and printed the contents
-- we had to make sure that the file was closed (which we have 
-- to do using something like python f.close()
-- Like clojure, we can get this done for us: enter withFile

main = do
	content <- readFile "1dot.pdb"
	let (seqres, atoms) = getAtomsAndSeqres (lines content) [] [] 
	print $ length seqres
	print $ length atoms

getAtomsAndSeqres :: [String] -> [String] -> [String] -> ([String], [String])
getAtomsAndSeqres [] seqres atoms = (seqres, atoms)
getAtomsAndSeqres (x:xs) seqres atoms
	| "SEQRES" `isPrefixOf` x = getAtomsAndSeqres xs (x : seqres) atoms 
	| "ATOM"   `isPrefixOf` x = getAtomsAndSeqres xs seqres (x : atoms)
    | otherwise               = getAtomsAndSeqres xs seqres atoms

getAtoms :: [String] -> [String]
getAtoms [] = []
getAtoms (x:xs) = if "ATOM" `isPrefixOf` x then x : getAtoms xs else getAtoms xs


-- this is like clojure with-open
-- (with-open [rdr (reader filename)]
--   (line-seq rdr))
--
