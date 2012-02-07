lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number 7!"
lucky 3 = "The magic #"
lucky x = "Sorry, ur out of lck"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial ( n - 1 )

charname :: Char -> String
charname 'a' = "Alpah"
charname 'c' = "Charlie"
charname 'f' = "Foxtrot"
charname _ = "eh?"

addVec :: (Num a) => (a,a)->(a,a) -> (a,a)
addVec a b = (fst a + fst b, snd a + snd b)

addVecPat :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVecPat (x1, y1) (x2, y2) = (x1 + x2, y1 + y2 )

first :: (a,b,c) -> a
first (x, _ , _ ) = x

second :: (a,b,c) -> b
second(_, y , _ ) = y

third :: (a,b,c) -> c
third(_, _, z)  = z

head' :: [a] -> a
head' [] = error "It's empty, fool!"
head' (x:_) = x

ht :: [a] -> (a, a, [a])
ht [] = error "can't ht an empty list"
ht (x:p:y) = (x,p,y) 

len :: (Num b) => [a] -> b
len [] = 0
len (_:xs) = 1 + len xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:y) = x + sum' y

