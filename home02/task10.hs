main :: IO()
main = do
     print $ everyOther 34 
     print $ everyOther 12 == 1
     -- print $ everyOther 852369 == 628
     print $ everyOther 1714 == 11
     -- print $ everyOther 12345 == 42
     print $ everyOther 891 == 9
     print $ everyOther 123 
     -- print $ everyOther 2121 == 22
     -- print $ everyOther 4736778 == 767
     -- print $ everyOther 448575 == 784
     -- print $ everyOther 4214 == 14 

rev :: Int -> Int 
rev n 
 |n < 0 = error "n was negative"
 | otherwise = helper n 0
 where
     helper :: Int -> Int -> Int
     helper leftOver result 
      |leftOver < 10 =result * 10 + leftOver
      |otherwise = helper (div leftOver 10) (result *10 + mod leftOver 10)

everyOther :: Int -> Int 
everyOther n 
 |n < 10 = error "n was wrong input"
 |otherwise = helper 10  1
  where
       helper :: Int -> Int ->  Int
       helper leftOver result 
        |rev (leftOver) < 100 = result + (div (mod leftOver 10) 10)
        |otherwise = helper (div (rev leftOver) 10 )  ((result ) +  (div (mod leftOver 10) 10))
