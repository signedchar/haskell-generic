import Data.Char

main = do
  putStrLn "What is your first name?"
  firstName <- getLine
  putStrLn "What's your last name?"
  lastName <- getLine
  let upperFirstName = map toUpper firstName
      upperLastName = map toUpper lastName
  putStrLn $ "hey" ++ " " ++ upperFirstName ++ " " ++ upperLastName ++ ", how are you?"
