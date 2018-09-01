module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz x = collatz_aux x 0
  where collatz_aux x n
          | x == 1 = Just n
          | x <= 0 = Nothing
          | x `mod` 2 == 0 = collatz_aux (x `div` 2) (n + 1)
          | otherwise = collatz_aux (3 * x + 1) (n + 1)
