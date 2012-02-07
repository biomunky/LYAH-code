-- first last age height phone color
data Person = Person String String Int Float String String deriving (Show)

data Personb = Personb { firstName :: String
                       , lastName :: String
                       , age :: Int
                       , height :: Float
                       , phoneNumber :: String
                       , flavor :: String
                       } deriving (Show)

data Car = Car {company :: String, model :: String, year :: Int } deriving (Show)

data Vec3 = Vec3 {x :: Float, y :: Float, z :: Float } deriving (Show)

tellCar :: Car -> String
tellCar (Car{company = c, model = m, year =y }) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Car2 a b c = Car2 { company2 :: a
	, model2 :: b
	, year2 :: c
	} deriving (Show)

tellCar2 :: (Show a) => Car2 String String a -> String
tellCar2 (Car2 {company2 = c, model2 = m, year2 = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y





