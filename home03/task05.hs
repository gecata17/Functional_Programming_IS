main :: IO()
main = do
     print $ mySin 100 1 == 0.8414709848078965 -- n = 100, x = 1 
     print $ mySin 100 0.5 == 0.479425538604203

fact :: Int -> Int
fact n = helper n 1
 where
     helper :: Int -> Int -> Int
     helper 0 result = result
     helper n result
      |n < 0 = error "n was negative"
      |otherwise = helper (n-1) (result*n)


mySin 0 x = 1
mySin n x = helper x n
  where
       helper result 1 = result - (x**3)/fact 3)
       helper result  leftOver = helper (result - (x**3)/fact 3)  (leftOver - 2)

