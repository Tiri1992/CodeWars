-- Ref: https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/haskell

evenOrOdd :: (Integral a) => a -> String 
evenOrOdd n | even n = "Even"
             | otherwise = "Odd"