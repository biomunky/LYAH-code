maplus :: (Num a) => [a] -> a
maplus [] = error "Empty array"
maplus xs = sum $ map (+0) xs

-- (function b) . (function a)
p1 :: (Num a) => a -> a
p1 x = x + 1
p2 :: (Num a) => a -> a
p2 x = x + 2

foo :: (Num a) => [a] -> [a]
foo x = map ( p2 . p1 ) x

