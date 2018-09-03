module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz x
  | x == 1 = Just 0
  | x <= 0 = Nothing
  | x `mod` 2 == 0 = fmap (1+) (collatz (x `div` 2))
  | otherwise = fmap (1+) (collatz (3 * x + 1))
