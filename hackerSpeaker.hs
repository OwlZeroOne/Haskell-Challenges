-- Create a function that takes a string as an argument
-- and returns a coded (h4ck3r 5p34k) version of the string.

import Data.Char
import Data.List

letters = ['A','E','I','O','S','T','Z']
encoded = ['4','3','1','0','5','7','2']

-- MAIN FUNCTION
hackerSpeaker :: String -> String
hackerSpeaker xs = [if letter `elem` letters
                    then encoded !! getIndex (letter) letters
                    else x | x <- xs]
                    where letter = toUpper x

getIndex :: Eq a => a -> [a] -> Int
getIndex x xs = head (elemIndices x xs)       
