main :: IO()
main = do

    print $ areAmicable 8 7 == False
    print $ areAmicable 83 72 == False
    print $ areAmicable 200 300 == False
    print $ areAmicable 220 284 == True
    print $ areAmicable 284 220 == True
    print $ areAmicable 1184 1210 == True
    print $ areAmicable 2620 2924 == True
    print $ areAmicable 6232 6368 == True  

sumDivs :: Int -> Int 
sumDivs 0 = 0
sumDivs n 
 |n < 0 = error "n was negative"
 | otherwise = helper 1
  where 
      helper :: Int -> Int 
      helper currentDivisor
       | currentDivisor == n = n --base -- currentDivisor
       | mod n currentDivisor == 0 = currentDivisor + helper (currentDivisor +1)
       | otherwise = helper (currentDivisor +1)

areAmicable :: Int -> Int -> Bool 
areAmicable x y = sumDivs x == sumDivs y  
