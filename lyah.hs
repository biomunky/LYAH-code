boomBangs xs = [ if x < 10 then ( x, "Boom" ) else (x, "Bang") | x <- xs, odd x ]

length' xs = sum [ 1 | _ <- xs]

removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A' .. 'Z'] ]


addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial x = product [1..x]


circumference :: Float -> Float
circumference r = 2 * pi * r





