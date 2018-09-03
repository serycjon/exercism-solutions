module Hamming (distance) where

import Data.List (zipWith)

distance xs ys
  | length xs /= length ys = Nothing
  | otherwise = Just $ sum $ zipWith charDistance xs ys
  where charDistance x y
          | x == y = 0
          | otherwise = 1
