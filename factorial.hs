
fact :: Num a => a -> a
fact 0 = 1
fact x = x * fact (x - 1)



