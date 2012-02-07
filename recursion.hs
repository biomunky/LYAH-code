max' :: (Ord a) => [a] -> a
max' [] = error "It's empty"
max' [x] = x
max' (x:xs)
    | x > max' xs = x
    | otherwise = max' xs


max2 :: (Ord a) => [a] -> a
max2 [] = error "empty list!"
max2 [x] = x
max2 (x:xs) = max x (max2 xs)


replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n-1) x


-- Implement my own take
-- _ means we don't care what's there - like scala
-- so if we said take' 1000000 [] we don't care about
-- the int because there is nothing to take from
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = a `elem'` xs


