-- Int inside Maybe
noZero :: Int -> Maybe Int
noZero 0 = Nothing
noZero x = Just x

-- Using a Maybe Int
addOne :: Maybe Int -> Maybe Int
addOne x = case x of
    (Just 0) -> Nothing
    (Just x) -> fmap (+1) (Just x)

-- Add X to a `Maybe Int`
addX :: Maybe Int -> Int -> Maybe Int
addX (Just x) y = fmap (+y) (Just x)

-- Functor instance with `Maybe a`
class Functor f where
  fmap :: (a -> b) -> fa -> fb --method

data Maybe a = Nothing | Just a

fmap :: (a -> b) -> Maybe a -> Maybe b

instance Functor Maybe where
  fmap f (Just x) = Just (f x)
  fmap f Nothing = Nothing
