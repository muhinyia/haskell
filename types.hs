{-
HASKELL STRUCTURE
Declarations: bind expressions to names
Expressions: compute values
Types: Constrain expressions/values

Example
f x = x + 1

f - function name
x - pattern
x+1 - expression
-}

-- Type Declarations
type Name = String
-- declares a type Name which is a string 
type Tel = String
-- declares a type Tel which is a string

-- Declaring types using data keyword
data MyBtree = Node String MyBtree MyBtree 
               | Leaf String 
               | Empty

{-
MyBtree - is a type which is a Binary tree. the nodes are Strings
Constructors : -Node, Leaf, Empty 
 Node - contains the left and right trees
 Left - only one node which is a string
 Empty - no type as it's literally empty 
-}

-- ALGEBRAIC DATA TYPES

{-

data <Type> =
<Constructor1> <Pattern1>
| <Constructor2> <Pattern2>
| …

-}

-- NOTE: All we need in a Programming language is sequencing, branching, looping

--Branching: Conditionals
-- if else then
empty xs =
     if xs == [] then "yes"
     else "no"
-- patter matching
empty' [] = "yes"
empty' (_:_) = "no"

-- case expression
empty'' xs = case xs of 
    [] -> "yes" 
    (_:_) -> "no"

-- Guards
empty''' xs 
   |xs== [] = "yes"
   | otherwise = "no"


-- LOCAL DECLARATIONS

{- where
    used in function declarations. It creates local names for the current pattern matching.
-}

strip s = init.tail $ dropWhile notcolon s
      where
         notcolon c = not (c==':')


{- let

-}
strip' s = let notcolon c = not (c==':') in init.tail $ dropWhile notcolon s

-- RECURSION

fact 1 = 1 -- Edge condition
fact n = n * fact (n-1)

--Edge condition == Base case
-- if no Edge condition code runs infinitely

fact' n = n * fact (n-1)
