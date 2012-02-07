import Data.Map
import Data.Function

phoneBook = [("betty","555-2938"),("ben","452-2928"),("patsy","493-2928")]

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key [] = Nothing
findKey key ( (k,v):xs ) = if key == k
                    then Just v
                    else findKey key xs

findKey2 :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey2 key = foldr (\ (k,v) acc -> if key == k then Just v else acc) Nothing





