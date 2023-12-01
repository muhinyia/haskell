import Data.Char
-- pattern matching let us define what value constructors are/take/assumes

myNot :: Bool -> Bool
myNot True = False
myNot False = True

-- summer
sumList :: Num a => [a] -> a
sumList [] = 0
sumList (x:xs) = x + sumList xs

{- NOTE
a Haskell implementation checks patterns for matches in the order in which we specify them in our equations. 
Matching proceeds from top to bottom, and stops at the first success.
 Equations below a successful match have no effect. 

-}

{- Construction and deconstruction

We apply a value constructor to build a value - Construction

When we pattern match against the constructor, we reverse the construction process - Deconstruction

Deconstruction doesn't destroy anything!!!
-}

sumList' :: Num a => [a] -> a
sumList' (x:xs) = x + sumList' xs
sumList' _ = 0


-- Records

{-
Records are another way of expressing types other than using the data definition method.
-}
type CustomerID = Int
type CustomerName = String
type CustomerAddress = [String]

data Customer = Customer CustomerID CustomerName CustomerAddress deriving (Show)

-- Let's represent the customer type using Records

data Customer' = Customer' {customerID :: CustomerID, customerName :: CustomerName, customerAddress :: CustomerAddress} deriving (Show)

c1 :: Customer
c1 = Customer 345 "Muhinyia Ndegwa" ["Weir Hall Road, The weymarks N17 8LE"]

c2 :: Customer'
c2 = Customer' 455 "Ndegwa Mukundi" ["743 Nyahururu"]

{-
With records we can use accessor functions
The accessor functions that we get “for free” when we use record syntax really are normal Haskell functions
-}

c2Name = customerName c2



-- Parameterized arguments
someBool :: Maybe Bool
someBool = Just True
someString :: Maybe String
someString = Just "Something"


{- A binary Tree
A binary tree is either a node with two children, which are themselves binary trees, or an empty value.

-}

data Tree a = Node (Tree a) (Tree a)
              | Empty
              deriving (Show)

node = [1,2,3]
