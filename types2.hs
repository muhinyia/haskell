-- Type Classes
phoneBook :: [(String, String)]
phoneBook = [("John Doe", "071273773"),("Purity Makau", "073737383")]

type Name = String

type PhoneNumber = String

type Entry = (Name, PhoneNumber)

type PhoneBook = [Entry]

phoneBook2 :: PhoneBook
phoneBook2 = [("John Doe", "071273773"),
              ("Purity Makau", "073737383")
              ]

-- loookup a given name in phoneBook2

-- inPhoneBook :: Name -> PhoneNumber -> Bool

-- CREATING NEW TYPES
type Position = (Int, Int)
data Direction = North | South | East | West -- created a new type of type Direction

move :: Position -> Direction -> Position
move (x, y) West = (x-1, y)
move (x, y) East = (x+1, y)
move (x, y) North =  (x, y+1)
move (x, y) South = (x, y-1)

-- LET'S CREATE A  RECORD type

data Person = Person {fName::String, lName::String, age::Int}

muhinyia = Person {fName = "Muhinyia", lName = "Ndegwa", age = 45}

mukundi = Person {fName = "Mukundi", lName="Muhinyia", age = 126}

{-
class Show a where
    show :: a -> String



class Read a where
    read :: String -> a



type Circle = Float
type Rect = (Float, Float)

data Shape = Circle | Rect deriving Eq
-}


data Day = Mon | Tues | Wed | Thur | Fri | Sat | Sun deriving (Eq, Ord, Show, Read, Enum)

exp1 = Wed == Wed

exp2 = Fri < Sat

f = do
    name <- getLine
    print $ "Hi" ++ name