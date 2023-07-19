--ref: https://www.codewars.com/kata/58bf9bd943fadb2a980000a7/train/haskell

whoIsPaying :: String -> [String]
whoIsPaying s | length s > 2 = slice s 
              | otherwise = [s]
    where slice :: String -> [String]
          slice s = [s, take 2 s]


-- Best practice solution: By using two _:_ we force that there needs to exist at least 3 chars in the string to pattern match
whoIsPaying' :: String -> [String]
whoIsPaying' xss@(x:y:_:_) = [xss, [x,y]]
whoIsPaying' n = [n]
