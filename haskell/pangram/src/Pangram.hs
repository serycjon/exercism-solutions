module Pangram (isPangram) where

import Data.Char (isAlpha, toLower)
import qualified Data.Set as Set

isPangram :: String -> Bool
isPangram text = textLetters == allLetters
  where textLetters = Set.fromList $ map toLower $ filter isAlpha text
        allLetters = Set.fromList ['a' .. 'z']
