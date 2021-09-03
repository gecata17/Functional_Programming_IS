main ::IO()
main = do
     print $ sumTuplePM (4, 5) == 9
     print $ sumTuplePM (-5, 5) == 0
     print $ sumTupleNonPM (4, 5) == 9
     print $ sumTupleNonPM (-5, 5) == 0
     print $ (\(x,y) -> x+y) (5,6) ==11 --lambda expression

sumTuplePM :: (Int,Int) -> Int 
sumTuplePM (x,y)  = x + y

sumTupleNonPM :: (Int,Int) -> Int 
sumTupleNonPM x  = fst x +  snd x