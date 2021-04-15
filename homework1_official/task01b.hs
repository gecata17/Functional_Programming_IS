main :: IO()
main = do
    print $ specialSum 3 20 == 2205
    print $ specialSum 5 31 == 665723
    print $ specialSum 8 10 == 545925272
    print $ specialSum 10 128 == 11135248639990


isPrime :: Int -> Bool  --function check if number is prime or not using also guards
isPrime 1 = False -- pattern matching
isPrime n
 | n < 0 = error " n was negative"  -- error check
 |otherwise = helper 2 
  where
      helper :: Int -> Bool -- helper function
      helper currentDivisor
       | currentDivisor == n = True  -- base case
       | mod n currentDivisor == 0 = False
       | otherwise = helper (currentDivisor + 1)

specialSum :: Int -> Int -> Int  -- function which calculates the special sum of the first k special numbers larger than m

specialSum k m  = helper 2 0 0 
 where
     helper :: Int -> Int -> Int -> Int  -- making helper function  to count the sum using guards
     helper degree counter result
      | counter == k = result  --base case
      | isPrime degree && 2^degree - 1 > m = helper (degree + 1) (counter + 1) (result + 2^degree - 1 )
      | otherwise = helper (degree + 1) counter result 
