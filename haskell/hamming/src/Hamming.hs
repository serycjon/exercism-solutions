module Hamming (distance) where

import Data.List (zipWith)

distance xs ys
  | length xs /= length ys = Nothing
  | otherwise = Just $ sum $ zipWith charDistance xs ys
  where charDistance x y = if x == y then 0 else 1
