-- Ref: https://www.codewars.com/kata/57241e0f440cd279b5000829/train/haskell

sumMul :: Int -> Int -> Maybe Int 
sumMul n m | n <= 0 = Nothing
           | m <= 0 = Nothing
           | n >= m = Nothing
           | otherwise = Just (sum $ takeWhile (<=m) (multiplesOfN n))
    where multiplesOfN :: Int -> [Int]
          multiplesOfN n = [i * n | i <- [1..]]