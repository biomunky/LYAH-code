import Data.Char


main = do
  putStrLn "What's your first name?"
  firstName <- getLine
  putStrLn "What's your surname?"
  lastName <- getLine
  
  let bigFN = map toUpper firstName
      bigLN = map toUpper lastName
        

  putStrLn $ "hello " ++ bigFN ++ " " ++ bigLN