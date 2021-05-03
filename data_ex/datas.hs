data Shape = Triangle Float Float Float | Square Float | Circle Float | ConvexPoligon Points deriving (Show)
data Point = Pt Float Float deriving (Show)
--data Points = Pts [Point] deriving (Show)
type Points = [Point]
type Angle = Float

area :: Shape -> Float
area (Triangle x y z) = let avg = (x + y + z) / 2
                        in sqrt( avg * (avg - x) * (avg - y) * (avg - z))
area (Square l) = l * l
area (Circle r) = pi * r^2

lengLine :: Point -> Point -> Float
lengLine (Pt x y) (Pt x' y') = sqrt ((x - x')^2 + (y - y')^2)

anglePolygon :: Float -> Angle
anglePolygon side = 360.0 / side

apothem :: Float -> Angle -> Float
apothem side angle = side / (2 * tan (angle / 2))

apothem :: Point -> Point -> Angle -> Float
apothem fpoint spoint angle = (lengLine fpoint spoint) / ( 2 * tan (angle / 2)) 
