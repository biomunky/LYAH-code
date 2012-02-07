import Control.Monad --for when usage

main = do
  putStrLn "Hi Dan"
  putChar 'c'
  print [1,2,3]
  input <- getLine
  when (input == "SWORDFISH") $ do
    putStrLn input
    
  userArray <- sequence [getLine, getLine, getLine]
  print userArray
  