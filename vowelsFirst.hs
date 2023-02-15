-- Write a function that takes a string, breaks it
-- up and returns it with vowels first, consonants
-- second. For any character that's not a vowel
-- (like special characters or spaces), treat them
-- like consonants.

vowelList = ['a','e','i','o','u']

isVowel :: Char -> Bool
isVowel ch = ch `elem` vowelList

getVowels :: String -> String
getVowels str = [chr | chr <- str, isVowel chr]

getCons :: String -> String
getCons str = [chr | chr <- str, not(isVowel chr)]

-- MAIN FUNCTION
vowelsFirst :: String -> String
vowelsFirst str = getVowels str ++ getCons str
