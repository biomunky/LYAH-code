import Control.Monad

main = do
  -- now a lambda that takes a number (a) and 
  -- asks a user for input
  -- the input is wrapped as IO using return
  -- the 'output' is boxed in colors
  colors <- forM [1,2,3,4] (\a -> do
                               putStrLn $ "What colour do you associate with " ++ show a ++ "?"
                               color <- getLine
                               return color)
  putStrLn "The colors associated with 1,2,3,4 are: "
  mapM putStrLn colors
                               