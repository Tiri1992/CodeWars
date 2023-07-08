-- Determine if a given year is a leap year or not
-- Type Synonyms
type Year = Int 

isLeapYear :: Year -> Bool 
isLeapYear y | y `mod` 400 == 0 = True
             | y `mod` 100 == 0 = False 
             | y `mod` 4 == 0 = True 
             | otherwise = False

    