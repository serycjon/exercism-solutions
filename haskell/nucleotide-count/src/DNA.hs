module DNA (nucleotideCounts) where

import qualified Data.Map as Map
import Control.Monad (foldM)

countSingle :: Map.Map Char Int -> Char -> Either String (Map.Map Char Int)
countSingle counter x = if x `elem` ['A', 'C', 'G', 'T']
  then Right $ increment counter x
  else Left "Errorneous nucleotide detected"
  where increment counter x = Map.insertWith (+) x 1 counter

nucleotideCounts :: String -> Either String (Map.Map Char Int)
nucleotideCounts xs = foldM countSingle emptyCounter xs
  where emptyCounter = Map.fromList [('A', 0),
                                     ('C', 0),
                                     ('G', 0),
                                     ('T', 0)]
