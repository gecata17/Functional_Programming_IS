main :: IO()
main = do
   
    print $ truncatablePrime 37==True
    print $ truncatablePrime 4678==False
    print $ truncatablePrime 3797 ==True -- 3797, 379, 37 and 3 are all prime
    print $ truncatablePrime 47 ==False-- 47 is prime, but 4 is not
    print $ truncatablePrime (-5) 
    
isPrime :: Int -> Bool
isPrime 1 = False
isPrime n
 | n < 0 = error " n was negative"
 |otherwise = helper 2
  where
      helper :: Int -> Bool
      helper currentDivisor
       | currentDivisor == n = True
       | mod n currentDivisor == 0 = False
       | otherwise = helper (currentDivisor + 1)

truncatablePrime :: Int -> Bool
truncatablePrime 1 = False
truncatablePrime n
 | n <= 0 = error "number was not positive"
 | otherwise = helper n
  where
      helper :: Int -> Bool
      helper n
       | n < 10 = isPrime n
       |otherwise = isPrime n == helper (div n 10)
       
