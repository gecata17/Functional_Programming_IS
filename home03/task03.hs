main :: IO()
main = do
     print $ subNum 123 5123783 == True -- x = 123, y = 5123783 
     print $ subNum 0 0 == True 
     print $ subNum 10 101 == True 
     print $ subNum 101 101 == True 
     print $ subNum 10 0 == False 
     print $ subNum 1253 5123783 == False 
     print $ subNum 12 0 == False

subNum :: Int->Int->Bool 
subNum 0 0 =True 
subNum x y 
 |x < 0 = error "x was negative"
 |y < 0 = error "y was negative"
 |x < 10 && y < 10 = x == y
 |x==y=True 
 |x ==(div y 10)=True
 |otherwise = subNum (div x 10) (div y 10)
