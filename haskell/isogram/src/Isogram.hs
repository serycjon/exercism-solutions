module Isogram (isIsogram) where

import qualified Data.Set as Set
import Data.Maybe (isJust)
import Control.Monad (foldM)
import Data.Char (isAlpha, toLower)

accumulateCharset :: Set.Set Char -> Char -> Maybe (Set.Set Char)
accumulateCharset set x = if Set.member x set
                          then Nothing
                          else Just $ Set.insert x set

isIsogram :: String -> Bool
isIsogram xs = isJust charset
  where charset = foldM accumulateCharset Set.empty $ filter isAlpha $ map toLower xs
