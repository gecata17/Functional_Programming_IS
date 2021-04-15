main :: IO()
main = do
    print $ safePrimesCount 20 100 == 4
    print $ safePrimesCount 2 10 == 2
    print $ safePrimesCount 1 983 == 25
    print $ safePrimesCount 166 1892 == 28
    print $ safePrimesCount 1678 20097 == 155


isPrime :: Int -> Bool -- helper function  --function check if number is prime or not using also guards
isPrime 1 = False -- pattern matching
isPrime n  
 | n < 0 = error " n was negative"  -- error check
 |otherwise = helper 2
  where
      helper :: Int -> Bool
      helper currentDivisor
       |currentDivisor == n = True  -- base case
       | mod n currentDivisor == 0 = False
       | otherwise = helper (currentDivisor + 1)

safePrimesCount :: Int -> Int -> Int  --function which calculates the count of safe primes numbers
safePrimesCount a b
 | mod (min a b) 2 /= 0 = helper (min a b) (max a b) 0  --interval setting first case
 | otherwise = helper ((min a b) + 1) (max a b) 0 --interval setting th other case
  where
      helper :: Int -> Int -> Int -> Int
      helper current maxNum counter
       | current >= maxNum = if isPrime maxNum && isPrime (div (maxNum - 1) 2) then counter + 1 else counter --max check of numbers
       | isPrime current && isPrime (div (current - 1) 2) = helper (current+ 2) maxNum (counter + 1)
       | otherwise = helper (current + 2) maxNum counter
