palindrome :: String -> Bool
palindrome = (==) <*> reverse
