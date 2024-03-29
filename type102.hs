data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False --a catchall rather than an exhaustative listing.

instance Show TrafficLight where
  show Red = "Red Light"
  show Yellow = "Amber Light"
  show Green = "Green Light"
