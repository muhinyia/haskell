-- Define LENGTH FUNCTIONALITY
myLength :: Num a1 => [a2] -> a1
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
