data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
   | x == a = Node x left right
   | x <  a = Node a (treeInsert x left) right
   | x >  a = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
   | x == a = True
   | x <  a = treeElem x left
   | x >  a = treeElem x right

nums = [8,6,4,1,7,3,5]
numsTree = foldr treeInsert EmptyTree nums

-- a fuctor can be thought of as a bucket - it doesn't require
-- a concrete type but a type parameter e.g. [] or Maybe
-- Since Tree is a container (a value and its left and right component)
-- it can be made into a functor and be given fmap

instance Functor Tree where
  fmap f EmptyTree = EmptyTree
  fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

-- Either is a bit of an odd one - it takes two arguments
-- Either a | b  which reads like (Left a | Right b )
-- We can use it as a Functor by paritally applying it

instance Functor (Either a) where
  fmap f (Right x) = Right (f x)
  fmap f (Left  x) = Left x



