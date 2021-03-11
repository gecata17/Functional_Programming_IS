main :: IO()
main = do  
    print $ reverseOrdSuff 6 == 6
    print $ reverseOrdSuff 57 == 7
    print $ reverseOrdSuff 2345 ==5
    print $ reverseOrdSuff 37563 == 36 
    print $ reverseOrdSuff 32763 == 367
    print $ reverseOrdSuff 32567 == 7
    print $ reverseOrdSuff 32666 == 6

reverseOrdSuff :: Int -> Int 
reverseOrdSuff n = helper n (mod n 10)
 where 
     helper :: Int -> Int -> Int
     helper n result 
      | n < 10 = result
      |  mod n 10  < mod (div n 10) 10 = helper (div n 10)  (result * 10 + mod (div n 10) 10)
      | otherwise = result
   
