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

isPrime :: Int -> Int ->Bool 
isPrime 1 2 = False 
isPrime n counter
 | n == counter = True 
 |mod n counter == 0 = False 
 | otherwise = isPrime n (counter +1) 

numberDigits :: Int -> Int 
numberDigits n 
 |n < 10 = 1
 | otherwise = 1 + numberDigits (div n 10)


isSpecial :: Int -> Int -> Bool
isSpecial n k = helper ( rev $ abs n)
 where 
     helper n 
      | numberDigits n == k == isPrime n 2
      | otherwise = (isPrime (getK 0 0 $ rev n) 2) && helper (div n 10)
     getK :: Int -> Int -> Int -> Int
     getK result toTake leftOver
      | toTake >= k = result
      | otherwise = getK (result*10 + (mod leftOver 10)) (toTake + 1) (div leftOver 10)



