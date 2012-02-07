
replicate 10 $ sum $ map (*3) $ zipWith max [1,2,3,4] [4,5,6,7]
replicate 10 . sum . map (*3) . zipWith max [1,2,3,4] $ [4,5,6,7]

sum $ takeWhile (< 500 ) $ filter odd $ map (^2) [1..]
--1771
sum . takeWhile (< 500 ) . filter odd . map (^2) $ [1..]
--1771
--better

--examples
oddSquareSum :: Integer  
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))
-- remove the ()
oddSquareSum :: Integer  
oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]  
--best
oddSquareSum :: Integer
oddSquareSum =
    let oddSquares = filter odd $ map (^2) [1..]
        belowLimit = takeWhile (<10000) oddSquares
    in sum belowLimit




