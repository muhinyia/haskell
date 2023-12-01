
{-Ways to build functions in Haskell:
  -> Aprtial Application
  -> Sections
  -> Lambda functions

-}
import Data.Char

-- PARTIAL APPLICATION
{-
Here we define a function f which takes two arguments name and age
it is of type 
f::String -> Int -> String
-}
f :: String -> Int -> String
f name age = "Hello " ++ name ++ " you are " ++ show (age)

{-if we give f just one function though it takes 2,
     we get a function expecting (waiting) for the second argument-}

greetMuhinyia :: Int -> String
greetMuhinyia = f "Muhinyia"

{-
Now the type of greetMuhinyia is greetMuhinyia::Int -> String in that it is expecting an Int to return a String
This is the concept of Partial Application 

now wecn call the second function like:
greetMuhinyia 45
-}

-- SECTIONS

-- INFIX vs PREFIX
twoAdd3 = 2+3  
-- prefix
twoAdd3' = (+) 2 3

-- prefix
twodiv3 = div 2 3

-- infix 
twodiv3' = 2 `mod` 3


-- SECTIONS
addThree = (+3) -- this is called the right section

-- now the functio  addThree can accept an integer add 3 to it

exponThree = (3^) -- this is called the left section
-- now given an integer the supplied argument will be raised to 3
-- Now we can do amazing things like map exponThree [1..10]


-- ANONYMOUS FUNCTIONS: lambda functions
incrementByOne n = n+1 -- increments a givent number by 1

-- We can use a lamda function for this i.e a function used without using having being defined ever
-- (\n -> n+1) 10
-- Or can even use sections (+1) 10

modTwo :: [Integer] -> [Integer]
modTwo = filter (\x -> x `mod` 3 == 2)
-- This function take an interable of Integers and subsequently return a List of Integers that when divided by three the remainder is 2

-- This can also be written as 
modTwo' = filter((==2).(`mod` 3))

itsVowel = filter (`elem` "aeiouAEIOU")

itsVowel' = filter(`elem` "aeiouAEIOU")


-- LAMBDAS HELP MAKE FUNCTIONS DECLARATIONS LIKE ANY OTHER VALUE DECLARATION
-- lets define sum function using pattern matching and recursion
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- using cases
sum'' x = case x of 
    [] -> 0
    (y:ys) -> y + sum'' ys

-- Now using lambda
sum''' = \x -> case x of 
    [] -> 0
    (y:ys) -> y + sum''' ys

{- In this last definition we have defined the summ''' function not really like a function but some sort of (variable in other programming languages)
It's the power of lambda functions
-}

-- HIGHER ORDER FUBCTIONS
{- Map
 map :: (a -> b) -> [a] -> [b]
 
 takes a function (a->b) and a list of inputs [a] and after applying the mapping returns a list of inputs [b]
 -}

multiplyTwo :: [Integer] -> [Integer]
multiplyTwo  = map (2*) 


{- Filter
filter :: (a -> Bool) -> [a] -> [a]
takes a function -which is a test (a -> Bool) and a list of inputs [a] does the test and returns a list of inputs [a] that passed the test   
-}

greaterThan2 = filter (>2)

thereisDigit = filter isDigit


{- Zip
zip :: [a] -> [b] -> [(a, b)]

Takes lists of inputs [a] and [b] then returns a list of tuples as (element of a, element of b)

This is done upto the length of the shortest list
-}

combine = zip 

{- zipWith
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

takes a function and lists returns tuple pairs results operated upon by the supplied function
-}
multiply = zipWith (*)


{- foldleft
foldl :: (a -> b -> a) -> a -> [b] -> a
takes a function i.e how to fold and some starting point and a list then applys the function to the list leftwise from the starting point

-}


foldListl l = foldl (*) 1 l

{- foldright
foldr :: (b -> a -> a) -> a -> [b] -> a
similar to foldl but this time starting from the right
-}

foldListr :: (Foldable t, Num b) => t b -> b
foldListr l =  foldr (+) 0 l



{- EXERCISES

-}

quiz1 :: Foldable t => [a] -> t [a] -> [a]
quiz1  l = foldr (++) l

        