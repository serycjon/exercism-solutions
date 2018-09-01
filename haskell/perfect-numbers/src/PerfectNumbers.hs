module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

factors :: Int -> [Int]
factors number = [x | x <- [1 .. number], number `mod` x == 0]

aliquotSum :: Int -> Int
aliquotSum number = sum $ init $ factors number

classify :: Int -> Maybe Classification
classify number
  | number <= 0 = Nothing
  | sum == number = Just Perfect
  | sum > number = Just Abundant
  | sum < number = Just Deficient
  where sum = aliquotSum number
