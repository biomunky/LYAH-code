headp :: [a] -> a
headp [] = error "empty list"
headp (x:_) = x

headc :: [a] -> a
headc xs = case xs of [] -> error "empty list"
                      (x:_) -> x

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty"
                                               [x] -> "one element"
                                               xs -> "a list!"

describe :: [a] -> String
describe xs = "The list is " ++ what xs
    where what [] = "empty"
          what [x] = "a singleton"
          what xs = "a longer list"




