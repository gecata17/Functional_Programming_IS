main :: IO()
main = do
        
     print $ removeFirstOccurrence 15365 5 == 1536
     print $ removeFirstOccurrence 15360 0 == 1536
     print $ removeFirstOccurrence 15300 0 == 1530
     print $ removeFirstOccurrence 15365 1 == 5365
     print $ removeFirstOccurrence 35365 3 == 3565
     print $ removeFirstOccurrence 1212 1 == 122
     print $ removeFirstOccurrence 1212 2 == 121  
     print $ removeFirstOccurrence 8910 9
combine :: Int->Int->Int 
combine x 0 = x
combine x y
 |y < 10 = x * 10 + y
 |otherwise = combine (x*10 + mod y 10) (div y 10)

removeFirstOccurrence :: Int -> Int ->Int 
removeFirstOccurrence n d = helper n 0
 where
     helper ::Int -> Int -> Int
     helper 0 leftDigits = n  
     helper leftOver leftDigits
      |mod leftOver 10 == d = combine  (div leftOver 10) leftDigits
      |otherwise = helper (div leftOver 10) (leftDigits * 10 + mod leftOver 10)
