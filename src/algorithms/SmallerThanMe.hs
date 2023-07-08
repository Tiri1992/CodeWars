-- Ref: https://www.codewars.com/kata/56a1c074f87bc2201200002e/train/haskell

smaller :: (Ord a) => [a] -> [Int]
-- Base cases
smaller [] = []
smaller [x] = [0]
smaller (x:xs) = smallerThan x xs : smaller xs
    where smallerThan :: (Ord a) => a -> [a] -> Int
          smallerThan _ [] = 0
          smallerThan x (y:ys) | x > y = 1 + smallerThan x ys
                               | otherwise = smallerThan x ys

-- Best Practice: Submitted on codewars
smaller' :: (Ord a) => [a] -> [Int]
smaller' [] = []
smaller' (x:xs) = (length . filter (<x)) xs : smaller' xs