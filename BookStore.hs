-- These are TYPE constructions
-- The data Foo = Foo is the type
-- Book/Mag are how we define them (try :type Mag)
-- As with Scala Book and Mag are not interchangable

-- Using type Int instead of Integer open us up to 32/64 bit issues
data BookInfo = Book Integer String [String]
                deriving (Show)

data MagazineInfo = Mag Integer String [String]
                    deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming" ["Bird", "de Moor"]

-- works in GHCI
-- let goodBook = Book 123 "Anathem" ["Neil Stephenson"]

type CustomerID = Integer -- these are synonyms, like scala
type ReviewBody = String
data BookReview = BookReview BookInfo CustomerID ReviewBody
                  deriving (Show)
type BookRecord = (BookInfo, BookReview)
