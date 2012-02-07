import qualified Data.Map as Map
import Data.Char

phonebook = 
  [("foo", "1-23"),
   ("foo", "1-23"),
   ("bar", "2-34"),
   ("wee", "3-45"),
   ("war", "4-56")]
  
findkey :: (Eq k) => k -> [(k,v)] -> v
findkey key m = snd . head . filter (\(k,v) -> k == key) $ m
                           
findkey2 :: (Eq k) => k -> [(k,v)] -> Maybe v
findkey2 key [] = Nothing
findkey2 key ((k,v):m)
  | key == k = Just v
  | otherwise = findkey2 key m
                
-- looks like a fold!
findkey3 :: (Eq k) => k -> [(k,v)] -> Maybe v
--foldr flips the arugments about
--Nothing is acc
findkey3 key m = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing m

-- DATA MAP

items = Map.fromList [ (3,"shoes"), (4, "trees"), (9, "bees") ]    
newbook :: Map.Map String String --type declaration
newbook = Map.fromList $ phonebook

string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit 

intbook = Map.map string2digits newbook

-- but people can have several numbers
-- create a nested structure
          
nestedbook = [("betty","555-2938")  
             ,("betty","342-2492")  
             ,("bonnie","452-2928")  
             ,("patsy","493-2928")  
             ,("patsy","943-2929")  
             ,("patsy","827-9162")  
             ,("lucille","205-2928")  
             ,("wendy","939-8282")  
             ,("penny","853-2492")  
             ,("penny","555-2111")  
             ]  
phonebookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phonebookToMap xs = Map.fromListWith add xs
                    where add number1 number2 = number1 ++ ", " ++ number2

latestBook = Map.insert "dan" "01223-263725" . phonebookToMap $ nestedbook               

-- ADD SOME TYPES TO MAP DECLARATIONS NICER
type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]
-- note that these are not declarations but aliases
-- to define a new type we must use data
data MyBook = True | False

-- can now declare new tools
inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnum pbook = (name, pnum) `elem` pbook

-- type synonyms
-- can also be parameterised
-- type AssocList = [(k,v)] -- here AssocList can have anything that's k or v
-- a function that accesses the list then has the type like
-- doSomething :: (Ord k) => k -> AssocList k v -> Maybe v

type IntMap v = Map.Map Int v
-- or we do it like this
type IntMap2  = Map.Map Int



