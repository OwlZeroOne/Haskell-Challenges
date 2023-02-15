-- Given a year, report if it is a leap year.
-- The tricky thing here is that a leap year in the Gregorian calendar occurs:

--      on every year that is evenly divisible by 4
--      except every year that is evenly divisible by 100
--      unless the year is also evenly divisible by 400

-- For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

isLeapYear :: Int -> Bool
isLeapYear year = (isDivisibleBy 4 year && not(isDivisibleBy 100 year))
                || (isDivisibleBy 4 year && isDivisibleBy 100 year && isDivisibleBy 400 year)

isDivisibleBy :: Int -> Int -> Bool
isDivisibleBy x year = year `mod` x == 0

-- listLeapYears :: [Int]
-- listLeapYears = [ x | x <- [-10000..10000], isLeapYear x]