main :: IO()
main = do
     print $ (applyN (\x -> 2 * x) 5) 2 == 64
     print $ (applyN (\x -> div x 10) 2) 100 == 1


applyN ::(Num a,Num b) => (a->b)->a->(a->b)
applyN f 0 = f
applyN f x = f . applyN  f (x-1)