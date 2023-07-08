reverseList :: [a] -> [a]
-- Base case
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]