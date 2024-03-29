main :: IO()
main = do

    print $ areNotEqualOneLine 5 2 == True
    print $ areNotEqualOneLine 5 5 == False
    print $ areNotEqualGuards 5 2 == True
    print $ areNotEqualGuards 5 5 == False
    print $ inside 1 5 4 == True -- a = 1, b = 5, x = 4
    print $ inside 5 1 4 == True
    print $ inside 10 50 20 == True
    print $ inside 10 50 1 == False
    
areNotEqualOneLine :: Int -> Int -> Bool 
areNotEqualOneLine x y = x /= y 

areNotEqualGuards :: Int -> Int -> Bool 
areNotEqualGuards x y
 |x==y = False 
 |otherwise = True

inside :: Int -> Int -> Int -> Bool 
inside x y z = min x y < z &&  z < max x y

