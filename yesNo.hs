class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno = id
-- ID is a unction that takes a parameter and returns the same thing

instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False

yesnoif :: (YesNo y) => y -> a -> a -> a
yesnoif yesnoVal yesResult noResult = if yesno yesnoVal then yesResult else noResult



