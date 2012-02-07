capital :: String -> String
capital "" = "Empty String!"
capital all@(x:r) = "The first letter of " ++ all ++ " is " ++ [x]

section :: [a] -> (a,a,[a],[a])
section [] = error "Empty List"
section all@(x:y:z) = ( x,y,z, all )

sec :: [a] -> (a,[a],[a])
sec [] = error "empty list"
sec inputs@(x:y) = ( x, y, inputs)

myname :: String -> String
myname n
    | n == "dan" = "Many call me dan"
    | n == "danny" = "few call me danny"
    | otherwise = "I don't response to " ++ n


bmiTell :: (RealFloat a) => a -> String
bmiTell bmi 
	| bmi <= 18.5 = "Underweight"
	| bmi <= 25.0 = "normal"
	| bmi <= 30.0 = "fatty"
	| otherwise   = "WHALE"

bmi :: (RealFloat a) => a -> a -> String
bmi w h
	| w / h ^ 2 <= 18.5 = "You're underwights"
	| w / h ^ 2 <= 25.0 = "just right!"
	| w / h ^ 2 <= 30.0 = "fatty!"
	| otherwise = "WHALE WHALE WHALE"

max' :: (Ord a) => a -> a -> a
max' a b
	| a > b = a
	| otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
	| a > b = GT
	| a == b = EQ
	| otherwise = LT

bmiW :: (RealFloat a) => a -> a -> String
bmiW w h
	| bmi <= skinny = "under"
	| bmi <= normal = "ok"
	| bmi <= fat    = "fat"
	| otherwise = "WHALE WHALE WHALE"
    where bmi = w / h ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
	where (f:_) = firstname
	      (l:_) = lastname

--Would write it like this really
initials' :: String -> String -> String
initials' (fn:_) (ln:_) = [fn] ++ "." ++ [ln] ++ "."


calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
	where bmi weight height = weight / height ^ 2


cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea  = pi * r ^2
    in sideArea + 2 * topArea

calcLet :: (RealFloat a) => [(a,a)] -> [a]
calcLet xs = [bmi | (w,h) <- xs, let bmi = w / h ^ 2]

calcLetPred :: (RealFloat a) => [(a,a)] -> [a]
-- let bmi = funcion, return only if bmi >= 25.0
calcLetPred xs = [bmi| (w,h) <- xs, let bmi = w / h ^2, bmi >= 25.0]





