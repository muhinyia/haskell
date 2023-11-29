import Data.List
import System.IO

-- create a function

addMe x y = x + y

whatAge 16 = "You can fend for yourself"

whateverAge _ = " I do'nt know what you want"

-- RECURSION
factorial 0 = 1
factorial n = n * factorial (n-1)

-- GUARDS
isOdd n 
    | mod n 2 == 0 = False
    | otherwise = True 


whatGrade n 
    | n>= 90 = "Distinction"
    | n>=80 = "Merit"
    | n>= 70 = "Pass"
    | otherwise = "Tried"


-- WHERE
batAvgRating hits atBats 
    | avg <= 0.200 = "Terrible"
    | avg <= 0.25 = "Average "
    | avg <= 0.28 = "You are getting there"
    | otherwise = "You are a superstar"
    where avg = hits/atBats



-- HIGHER ORDER FUNCTIONS
times4 x = x*4
lt4 = map times4 [1,2,3,4,6]