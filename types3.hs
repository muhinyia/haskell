-- implement drop function that drops given number of items from a list

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n<= 0 || null xs  
              then xs
             else myDrop (n-1) (tail xs)


-- implement custom last
mylast :: [a]-> [a]
mylast xs = if null xs then []
            else 
                if length xs == 1 
                then take 1 xs 
                else mylast (tail xs)
            

-- using guards
mylast' :: [a] -> [a]
mylast' xs | null xs = []
            | length xs == 1 = take 1 xs
            | otherwise = mylast' (tail xs)


-- return the element just before the last one
lastButOne :: [a] -> [a]
lastButOne xs | null xs = []
              | length xs == 2 = take 1 xs
              | otherwise = lastButOne (tail xs)


-- define a type for books in a bookstore
data BookInfo = Book Int String [String] deriving (Show)

-- create a book
riverBetween::BookInfo
riverBetween = Book 1 "The River Between" ["Ngugi wa Thiong'o", "Twiga Publishers", "1997"]

thingsFallApart :: BookInfo
thingsFallApart = Book 2456 "Things Fall Apart" ["Chinua Achebe", "Lagos Prime Publishers", "1980"]

{- Let's write a type to enable writing of reviews for our books 

-- instead of using Int and String in the data type of which we don't know what it is how about,
 defining it first

 -- These are called synonam types
-}
type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody deriving (Show)

riverBetweenReview :: BookReview
riverBetweenReview = BookReview riverBetween 4545 "This is an epic book"

{-ALGEBRAIC DATA TYPES 
- allows to have more than one value Constructor in a data type

-- lets create a data type about payment method
-}

-- we create synonams first
type CardHolder = String
type CardNumber = String
type Address = [String]

-- the data type
data BillingInfo = CreditCard CardHolder CardNumber Address 
                   | CashOnDelivery 
                   | Invoice CustomerID 
                   deriving (Show)

{-
Since Algebraic Data Types allows for multiple value Constructors, we are able to represent BillingInfo in several ways,
 It can be made using a CreditCard, Cash or even using an Invoice 
-}

-- lets create a function of type BillingInfo
cardBill :: BillingInfo
cardBill = CreditCard "Mr. Muhinyia Ndegwa" "07551275229" ["weir Hall Road, The Weymarks N17 8LE", "143 Nyeri"]

cashBill :: BillingInfo
cashBill = CashOnDelivery

invoiceBill :: BillingInfo
invoiceBill = Invoice 7383

{-
Types lets us bring the type system to bear in writing programs with fewer bugs.



There is no hard and fast rule for deciding when it's better to use a tuple or a distinct data type,
 but here's a rule of thumb to follow.
If you're using compound values widely in your code (as almost all non-trivial programs do), 
adding data declarations will benefit you in both type safety and readability.
 For smaller, localised uses, a tuple is usually fine.
-}