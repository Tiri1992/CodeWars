--ref: https://www.codewars.com/kata/539ee3b6757843632d00026b
import Data.Char (isUpper)
import Data.List (findIndices, findIndex)

capitals :: String -> [Int]
capitals = increment 0
    where increment :: Int -> String -> [Int] 
          increment _ [] = []
          increment n (x:xs) | isUpper x = n : increment (n + 1) xs 
                             | otherwise = increment (n + 1) xs 

-- Best practice solution
capitals' :: String -> [Int]
capitals' = findIndices isUpper  