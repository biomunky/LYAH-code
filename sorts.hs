quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted


isort :: (Ord a) => [a] -> [a]
isort [] = []
isort (x:xs) = insert' x (isort xs)

insert' :: (Ord a) => a -> [a] -> [a]
insert' x [] = [x]
insert' x lst@(y:ys)
    | x <= y = x:(lst)
    | otherwise = y : (insert' x ys)






