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
countPalindromes x y = helper ((min x y) +1) ((max x y ) +1)
 where
     helper start finish
      |start >= finish = 0
      |isPalindrome start= 1 + helper (start + 1) finish 
      |otherwise = helper (start + 1) finish
