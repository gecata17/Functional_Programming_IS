main :: IO()
main = do  
    print $ isSpecial 131 2 == True
    print $ isSpecial 472 2 == False
    print $ isSpecial 17197 2 == True
    print $ isSpecial 12234 3 == False
    print $ isSpecial 10113 3 == True
    print $ isSpecial 353 2 == False

rev :: Int -> Int 
rev n 
 |n < 0 = error "n was negative"
 | otherwise = helper n 0
 where
     helper :: Int -> Int -> Int
     helper leftOver result 
      |leftOver < 10 =result * 10 + leftOver
      |otherwise = helper (div leftOver 10) (result *10 + mod leftOver 10)

isPrime :: Int -> Bool 
isPrime 1 = False 
isPrime n 
 | n < 1 = error "n was not natural" 
 | otherwise = helper 2 
  where
      helper :: Int -> Bool 
      helper currentDivisor
       | currentDivisor == n = True 
       | mod n currentDivisor == 0 = False 
       | otherwise = helper (currentDivisor + 1) 

isSpecial :: Int -> Int -> Bool
isSpecial num x
 | num == 0 = False 
 | rev (mod num 10) ==  x  = True
 |isPrime num && isPrime x = True
 | otherwise = isSpecial (div num 10) x
