main :: IO()
main = do
    print $ (difference (\x -> 2 * x)) 15.16 15.20 == 7.99999999999983e-2
    print $ (difference (\x -> 2 * x)) 8.5 8 == -1.0
    print $ (myLambda (\ x -> x)) 5 == 5
    print $ (myLambda (\ x -> x)) 5 == 5
    print $ (myLambda (\ x -> x)) "Hello" == "Hello"
    print $ (myLambda (+1)) 5 == 6
    print $ (negatePred (\x -> mod x 2 == 0)) 2 == False
    print $ (upperBound (*2) 100) 50 == 100
    print $ sumTuple (4, 5) == 9
    print $ sumTuple (-5, 5) == 0
    --print $ (compose (\x -> x - 5) (\y -> y + 25)) 5 == 25    
difference :: (Num a ) => ( a->  a) -> (a->a->a ) 
difference f = (\x y -> (f y) - (f x))

myLambda::(a->a)->(a->a)
myLambda f  = (\x-> f x)

negatePred::(a->Bool )->(a->Bool )
negatePred f = (\x-> not $ f x )

--composition::(a->a)->(a->a)->(a->a->a)
composition f y = (\x -> f y x)

difference2::(Num a )=>(a->a)->(a->a->a)
difference2 f  = (\x y -> (f y) - (f x))

upperBound f y = (\x->max (f x) y)

sumTuple::(Int,Int)->Int 
sumTuple v = fst v + snd v

dividePM::(Int,Int)->(Int,Int)
dividePM (x,y) = ((div x y),(mod x y))