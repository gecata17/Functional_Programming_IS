main :: IO()
main = do 
      print $ (getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2




getOddCompositionValuey ys  n = foldl (\f x->f (mod n   x == 0 )) 0  ys 




