module SumOfMultiples (sumOfMultiples) where

import qualified Data.Set as Set

multiplesUpTo :: Integer -> Integer -> (Set.Set Integer)
multiplesUpTo limit x = Set.fromList [x * n | n <- [1..(limit `div` x)], x * n < limit]

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum allMultiples
  where allMultipleSets = map (multiplesUpTo limit) factors
        completeMultiplesSet = foldl Set.union Set.empty allMultipleSets
        allMultiples = Set.toList completeMultiplesSet
