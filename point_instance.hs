-- My Point
data Mpoint = Pt Float Float deriving (Show)

addPoints :: Mpoint -> Mpoint -> Mpoint
addPoints (Pt x y) (Pt a b) = Pt (x + a) (y + b)

instance Eq Mpoint where
  (==) (Pt a b) (Pt x y) =
    a == x && b == y
