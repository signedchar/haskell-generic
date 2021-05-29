import Control.Monad
import Data.Char

main = forever $ do
  input <- getLine
  putStrLn $ map toUpper input
