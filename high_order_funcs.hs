multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = x `compare` 100

-- use division with () to define partial functions
div10 :: (Floating a) => a -> a
div10 = (/10)

-- using negative numbers requires
-- 3 `subtract` 5 == 5 - 3

-- highorder 
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f ( f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y: zipWith' f xs ys

flip' :: (a -> b -> c) -> b -> a -> c
flip' f y x = f x y

-- can write with a lambda
flipr :: ( a -> b -> c ) -> b -> a -> c
flipr f = \ x y -> f y x

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let less = quicksort (filter (<=x) xs)
        more = quicksort (filter (>x) xs)
    in less ++ [x] ++ more

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999 ..] )
    where p x = x `mod` 3829 == 0

-- can haz lambdas -- identified by (\ ... )
-- omit the () and the lambda extends all the
-- way to the right - as below
addThree :: (Num a) => a -> a ->a ->a
addThree = \x -> \y -> \z -> x + y + z

-- it's much better not to do this
-- and stick with the multThree approach
addThree' :: (Num a) => a -> a -> a -> a
addThree' x y z = x + y + z

-- joy of folds
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\ acc x -> acc + x) 0 xs






