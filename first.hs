import Data.List
import System.IO

-- TYPES
-- Int
minInt :: Int
minInt = minBound::Int

-- Double
bigFloat :: Double
bigFloat = 3.9993939393+ 37.838383898393983933

sumsOfNum = sum[1..100]

maxInt = maxBound::Int

modEx = mod 5 4

mod2 = 5 `mod` 4

-- LISTS
primeNumbers = [3, 5, 7,11]

primeNumbers2 = 2 : primeNumbers

morePrimes = primeNumbers ++ [13,17, 19, 23, 29]

morePrimes2 = morePrimes ++ [2]

primes = 2:3:5:7:[]

len = length morePrimes2


infList = [1..]

twos = repeat 2

threes = replicate 1000000 3 


diviBy9N13N19 = [x | x<-[1..500], mod x 13==0, mod x 9 ==0, mod x 21 ==0]

li =   [2,4..100]

li2 = replicate 10 2

reminders  = zipWith (*) li li2

biggerThan50 = filter (>=50) li

li3 = [2,4..]
upto20 = takeWhile (<20) li3

mult = foldl (+) 0 [1,2,3,4,5]

sum1 = sum [1,2,3,4,5]


-- LIST COMPREHENSIONS
pow3 = [x^3 | x <- [2,3,4,5,6,7,8,9,10]]

multTable = [[x*y | x <-[1..10]] | y <-[1..10]]


-- TUPLES

t1 = (1,2,"Muhinyia")

main = do
    putStrLn "What is your name"
    name <- getLine
    putStrLn ("Good evening: "++  name)