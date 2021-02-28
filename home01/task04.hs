main :: IO()
main = do

    print $ myGcd 5 13 == 1
    print $ myGcd 13 1235 == 13


-- The Euclidean Algorithm for finding GCD(x,y) is as follows:
-- If x = 0 then GCD(x,y)=y.
-- If y = 0 then GCD(x,y)=x.
-- Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).


myGcd :: Int -> Int -> Int 
myGcd a b 
 |a==b = a
 |a < b = myGcd a (b-a) 
 |otherwise = myGcd (a-b) b
