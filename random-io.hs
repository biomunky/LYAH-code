import System.Random

main = do
    gen <- getStdGen
    putStrLn $ take 20 (randomRs ('a', 'z') gen)
	-- to generate a new random number
	-- we need to apply newStdGen
    gen' <- newStdGen
    putStrLn $ take 20 (randomRs ('a', 'z') gen')




