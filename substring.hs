import Data.Maybe
import Data.Map
import Data.List

main = do
     let sq = "SEQRES   1 A  282  MET SER GLY ALA ASP ARG SER PRO ASN ALA GLY ALA ALA"
     print $ substring sq ( -1)   10
     print $ substring sq   11    10
     print $ substring sq    0    10
     print $ substring sq (-11) (-10)
     print $ parseSeqres sq

parseSeqres :: String -> Map String String
parseSeqres "" = fromList [] 
parseSeqres s
    | "SEQRES" `isPrefixOf` s = fromList [("start", start), ("end", end), ("chain", chain), ("sequence", seq)]
    | otherwise = fromList []
    where wds   = words s
          start = wds !! 1 
          chain = wds !! 2
          end   = wds !! 3
          seq   = unwords $ drop 4 wds

substring :: String -> Int -> Int -> Maybe String
substring "" _ _ = Nothing
substring s start totake
    | and [(start  < 0), (totake < 1)] = Nothing
    | totake < 1 = Nothing
    | start < 0  = Just . take totake $ drop 0     s
    | otherwise  = Just . take totake $ drop start s
