import System.IO
import Data.Char
import Data.List
import Debug.Trace

main :: IO()
main = do
  let x = [1..10]
      y = reverse x
  mainloop x
  mainloop' x y

      
mainloop :: (Show a, Eq a) => [a] -> IO ()
mainloop xa = do
  if xa == []
  	then return ()
    	else do
    		let a = head xa
    		print a
    		mainloop $ tail xa

mainloop' :: (Show a, Eq a) => [a] -> [a] -> IO()
mainloop' [] _ = return ()
mainloop' _ [] = return ()
mainloop' (x:xs)(y:ys) = do 
	print [x, y] 
	mainloop' xs ys

    
  
