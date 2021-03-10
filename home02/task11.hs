main :: IO ()
main = do
    print $ countPalindromes 5 13 == 5 -- 6 7 8 9 11 
    print $ countPalindromes 13 5 == 5 -- 6 7 8 9 11

rev :: Int -> Int 
rev n 
 |n < 0 = error "n was negative"
 | otherwise = helper n 0
 where
     helper :: Int -> Int -> Int
     helper leftOver result 
      |leftOver < 10 =result * 10 + leftOver
      |otherwise = helper (div leftOver 10) (result *10 + mod leftOver 10)

isPalindrome :: Int -> Bool 
isPalindrome n = n == rev n


countPalindromes :: Int -> Int -> Int 
countPalindromes x y = helper 1 
 where
     helper :: Int -> Int 
     helper currentDivisor 
      |min x y<(isPalindrome currentDivisor) && (isPalindrome currentDivisor)< max x y==currentDivisor + helper (currentDivisor+1) 
      |otherwise = (currentDivisor + 1)
      
-- not finished idea succesfully
