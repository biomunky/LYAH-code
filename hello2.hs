addTwo :: (Num a) => [a] -> [a]
addTwo = map (+2)

main = do
  putStrLn "Hello, what's your name?"
  name <- getLine
  putStrLn ("Hi " ++ name ++ ", nice to meet you")