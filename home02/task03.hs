main :: IO ()
main = do 
    print $ sumPrimeDivs 6 == 5 -- 2 + 3 
    print $ sumPrimeDivs 18 == 5 -- 2 + 3 
    print $ sumPrimeDivs 45136 == 53
    print $ sumPrimeDivs 12 == 5
    print $ sumPrimeDivs 9 ==3
    print $ sumPrimeDivs 237 == 82
    print $ sumPrimeDivs 1
    print $ sumPrimeDivs (-3)

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n 
 | n < 1 = error "n was not natural" 
 | otherwise = helper 2 
  where
      helper :: Int -> Bool 
      helper currentDivisor 
       | currentDivisor == n =  True
       | mod n currentDivisor == 0 =False
       | otherwise = helper (currentDivisor + 1)  


sumPrimeDivs :: Int -> Int
sumPrimeDivs 1 = 0
sumPrimeDivs n 
 | n < 1 = error "n was not natural" 
 | otherwise = helper 2 
  where
      helper ::Int -> Int
      helper currentDivisor 
       | currentDivisor == n =  0
       | mod n currentDivisor == 0 && isPrime currentDivisor = currentDivisor + helper(currentDivisor+1)
       | otherwise = helper (currentDivisor + 1)  
 
