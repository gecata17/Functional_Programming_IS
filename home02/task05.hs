main :: IO()
main = do
    print $ hasIncDigits 1244 == True
    print $ hasIncDigits 12443 == False
    print $ hasIncDigits 14567 == False
    print $ hasIncDigits 999968 == False
    print $ hasIncDigits 6 == True

hasIncDigits :: Int -> Bool 
hasIncDigits n 
 |n < 10 = True 
 |otherwise = helper (div n 10) (mod n 10)
  where
      helper leftOver result
       |leftOver<10 = leftOver< result
       |(mod leftOver 10) >= result = True 
       |otherwise = helper (div leftOver 10) (mod leftOver 10)
    
