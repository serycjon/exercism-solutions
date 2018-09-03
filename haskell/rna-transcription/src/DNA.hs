module DNA (toRNA) where


toRNA :: String -> Maybe String
toRNA dna = sequence $ map nucleotideToRNA dna
  where nucleotideToRNA 'C' = Just 'G'
        nucleotideToRNA 'G' = Just 'C'
        nucleotideToRNA 'T' = Just 'A'
        nucleotideToRNA 'A' = Just 'U'
        nucleotideToRNA _ = Nothing
