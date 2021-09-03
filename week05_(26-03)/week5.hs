import Data.List
main :: IO()

main = do
    
    print $ (myLambda (\ x -> x)) 5 == 5      
    print $ (myLambda (\ x -> x)) "Hello" == "Hello"
    print $ (myLambda (+1)) 5 == 6
    print $ (negatePred (\x -> mod x 2 == 0)) 2 == False
    print $ (compose (\x -> x - 5) (\y -> y + 25)) 5 == 25
    print $ (compose group sort) "Hello World" == [" ","H","W","d","e","lll","oo","r"]
    print $ (partiallyApply (\x y -> 10 * x + y) 5) 10 == 60
    print $ (\ x y z -> x y z) (\ x y -> x + y) 5 6
    print $ (\ x y -> x + y) 5 6
    print $ (\ x -> x + 10) 5
    
myLambda :: (a->b) -> (a -> b )
myLambda f = (\x->f x) -- f = f  partial application

negatePred :: (a->Bool) -> (a -> Bool)
negatePred p = (\x -> not $ p x) -- p = not . p partial application


compose :: (b->c) -> (a->b)->(a->c)
compose f g = (\x -> f (g x)) -- f g = f . g partial application

partiallyApply :: (a ->b -> c ) ->a -> (b -> c)
partiallyApply  f x = (\y -> f x y) -- f x = f x  --