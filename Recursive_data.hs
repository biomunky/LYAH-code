data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)

-- alternatively

data List2 a = Empty2 | Cons2 {listHead :: a, listTail :: List2 a} deriving (Show, Read, Eq, Ord)

-- the 5 indicates how strong the binding is.
-- infixr makes it right associative
infixr 5 :-:
data Listc a = Emptyc | a :-: (Listc a) deriving (Show, Read, Eq, Ord)


-- add 2 list together
infixr 5 .++
(.++)::Listc a -> Listc a -> Listc a
Emptyc .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

