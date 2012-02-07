data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- create a bunch of concentric circles
-- map (Circle 10 20) [4,5,6,7]
-- map surface . map (Circle 10 20) $  [4,5,6,7]
-- after creating point we define shapes:
--surface (Circle (Point 0 0) 24 )


-- shift a shape on the x and y axis
nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) a b = Circle( Point (x+a) (y+b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point( x1 + a) (y1 + b)) (Point (x2 +a) (y2 + b) )

-- Points are a pain.  Create an aux function to
-- remove them
baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Float -> Shape
baseRect w h = Rectangle( Point 0 0 ) (Point w h)


