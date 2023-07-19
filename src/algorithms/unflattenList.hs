-- Ref: https://www.codewars.com/kata/57e2dd0bec7d247e5600013a/train/haskell
unflatten :: [Int] -> [[Int]]
unflatten [] = []
unflatten xss@(x:xs) | x < 3 = [x]:unflatten xs 
                     | otherwise = take x xss : unflatten (drop x xss)
