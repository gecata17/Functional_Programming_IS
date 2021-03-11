main :: IO()
main = do

 print $ sumSpecialPrimes 5 2 == 392
 print $ sumSpecialPrimes 5 3 == 107
 print $ sumSpecialPrimes 10 3 == 462

isPrime :: Int -> Int -> Bool  
isPrime 1 2 = False
isPrime n currentDivisor
 | n == currentDivisor = True 
 | mod n currentDivisor == 0 = False
 | otherwise = isPrime n (currentDivisor+1)

isSpecial :: Int -> Int -> Bool
isSpecial num x
 | num == 0 = False 
 | mod num 10 == x  = True
 | otherwise = isSpecial (div num 10) x

sumSpecialPrimes :: Int -> Int -> Int 
sumSpecialPrimes n d = helper 2 0 0
 where
     helper :: Int -> Int -> Int -> Int
     helper current leftOver result 
      |leftOver == n = result
      | isPrime current 2 &&  isSpecial current d = helper (current+1) (leftOver+1) (result + current)
      | otherwise = helper (current+1) leftOver result 
