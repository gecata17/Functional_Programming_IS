main :: IO ()
main = do
    print $ isPerfect 1 == False -- the sum of the divisors is 0, because of the hint 
    print $ isPerfect 6 == True -- 1 + 2 + 3 = 6 = 6 
    print $ isPerfect 495 == False 
    print $ isPerfect 33550336 == True
sumDivs :: Int -> Int 
sumDivs 0 = 0
sumDivs n 
 |n < 0 = error "n was negative"
 | otherwise = helper 1
  where 
      helper :: Int -> Int 
      helper currentDivisor
       | currentDivisor == n = n--base -- currentDivisor
       | mod n currentDivisor == 0 = currentDivisor + helper (currentDivisor +1)
       | otherwise = helper (currentDivisor +1)

isPerfect :: Int -> Bool 
isPerfect n
 |n < 1 = error "n was not natural"
 |otherwise = helper 1 
  where
      helper :: Int  -> Bool 
      helper currentDivisor
       | currentDivisor == n = False  --base -- currentDivisor
       | n==sumDivs currentDivisor=True
       | otherwise = helper (currentDivisor + 1) 
        
        
-- problem in algorithm
