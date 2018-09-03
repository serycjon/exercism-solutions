module DNA (toRNA) where

nucleotideToRNA :: Char -> Maybe Char
nucleotideToRNA 'C' = Just 'G'
nucleotideToRNA 'G' = Just 'C'
nucleotideToRNA 'T' = Just 'A'
nucleotideToRNA 'A' = Just 'U'
nucleotideToRNA _ = Nothing

toRNA :: String -> Maybe String
toRNA dna = sequence $ map nucleotideToRNA dna
