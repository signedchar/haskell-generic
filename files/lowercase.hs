import Data.Char (toLower)

main = do
  contents <- getContents
  putStr (map toLower contents)
