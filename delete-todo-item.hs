import System.IO
import System.Directory
import Data.List
import Control.Exception -- for cleaning up

main = do
    contents <- readFile "todo.txt"
    let todoTasks = lines contents
        numberedTasks = zipWith(\n line -> show n ++ " - " ++ line) [0..] todoTasks
    putStrLn "These are TODO items:"
    mapM_ putStrLn numberedTasks
    putStrLn "Which one do you want to delete?"
    numberString <- getLine
    let number = read numberString --read pulls data out of IO() ?
        newTodoItems = unlines $ delete (todoTasks !! number) todoTasks

    -- LETS MAKE THINGS CLEAN AND SAFE
    --bracket : (resource handling) (on-error) (on-success)
    bracketOnError( openTempFile "." "temp" )
        (\(tempName, tempHandle) -> do
            hClose tempHandle
            removeFile tempName)
        (\(tempName, tempHandle) -> do
            hPutStr tempHandle newTodoItems
            hClose tempHandle
            removeFile "todo.txt"
            renameFile tempName "todo.txt")




