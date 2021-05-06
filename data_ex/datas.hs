data Shape = Triangle Float Float Float | Square Float | Circle Float | ConvexPolygon Sides Points deriving (Show)
data Point = Pt Float Float deriving (Show)
--data Points = Pts [Point] deriving (Show)
type Points = [Point]
type Angle = Float
type Sides = Float

area :: Shape -> Float
area (Triangle x y z) =
  let avg = (x + y + z) / 2
  in sqrt( avg * (avg - x) * (avg - y) * (avg - z))
area (Square l) = l * l
area (Circle r) = pi * r^2
area (ConvexPolygon sides points) =
  let [firstPoint, secondPoint] = firstTwoPoints points
      perimeter = sides * (lengLine firstPoint secondPoint)
      ap = apothem sides (anglePolygon sides)
  in (perimeter * ap) / 2

lengLine :: Point -> Point -> Float
lengLine (Pt x y) (Pt x' y') = sqrt ((x - x')^2 + (y - y')^2)

anglePolygon :: Sides -> Angle
anglePolygon sides = 360.0 / sides

apothem :: Sides -> Angle -> Float
apothem sides angle = sides / (2 * (tan (angle / 2)))

apothem' :: Point -> Point -> Angle -> Float
apothem' fpoint spoint angle = (lengLine fpoint spoint) / ( 2 * tan (angle / 2)) 

firstTwoPoints :: Points -> [Point]
firstTwoPoints [] = []
firstTwoPoints points = [(head points), points!!1]

