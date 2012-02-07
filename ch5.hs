zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

foo :: (a -> a -> a) -> [a] -> [a] -> [a]
foo _ _ [] = []
foo _ [] _ = []
foo f (x:xs) (y:ys) = f x y : foo f xs ys

bar :: (Num a) => a -> a -> a
bar x y = x * y

mx :: (Ord a) => [a] -> a
mx [] = error "empty list"
mx [x] = x
mx (x:xs) = max x (mx xs)

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ []   = []               
take' n (x:xs) = x : take' (n - 1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

