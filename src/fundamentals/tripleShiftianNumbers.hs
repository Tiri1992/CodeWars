--ref : https://www.codewars.com/kata/56b7526481290c2ff1000c75/train/haskell

tripleShiftian :: (Integer, Integer, Integer) -> Int -> Integer 
tripleShiftian (a, _, _) 0 = a
tripleShiftian (a, b, c) n = tripleShiftian (b, c, 4 * c - 5 * b + 3 * a) (pred n)