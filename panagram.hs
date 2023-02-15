import Data.Char

-- Determine if a sentence is a pangram. A pangram is a sentence using
-- every letter of the alphabet at least once.
-- The best known English pangram is:
--     The quick brown fox jumps over the lazy dog.

alphabet :: [Char]
alphabet = ['a'..'z']

isPanagram :: String -> Bool
isPanagram sentance = and (lettersInSentance sentance)

lettersInSentance :: String -> [Bool]
lettersInSentance sentance = [letter `elem` sentance || (toUpper letter) `elem` sentance
                                | letter <- alphabet]