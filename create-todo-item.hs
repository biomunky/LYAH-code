import System.IO
import System.Directory
import Data.Char

main = do
	todoItem <- getLine
	appendFile "todo.txt" (todoItem ++ "\n")




