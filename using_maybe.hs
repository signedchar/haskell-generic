-- Int inside Maybe
noZero :: Int -> Maybe Int
noZero 0 = Nothing
noZero x = Just x

-- Using a Maybe Int
addOne :: Maybe Int -> Maybe Int
addOne x = case x of
    (Just 0) -> Nothing
    (Just x) -> fmap (+1) (Just x)