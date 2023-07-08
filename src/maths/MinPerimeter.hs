-- Ref: https://www.codewars.com/kata/5826f54cc60c7e5266000baf/train/haskell


minimumPerimeter :: Int -> Int
minimumPerimeter a = minimum ([2 * (i + (a `div` i)) | i <- [1 .. upperLimit], a `mod` i == 0])
    where upperLimit = floor $ sqrt $ fromIntegral a