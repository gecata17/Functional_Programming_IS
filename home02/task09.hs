main :: IO()
main = do
     print $ removeD 1 656 == 656
     print $ removeD 5 656 == 66
     print $ removeD 6 656 == 5
     print $ removeD 0 606 == 66
     print $ removeD 0 600 == 6
     print $ removeD 6 600 == 0

rev :: Int -> Int -> Int 
rev num result 
  |num == 0 =result
  |otherwise = rev (div num 10) ((result*10) + (mod num 10) )

removeD :: Int -> Int -> Int 
removeD d n = rev (helper n 0) 0
  where
       helper :: Int -> Int -> Int 
       helper number result
        |number < 1 = result 
        |mod number 10 == d = helper (div number 10) result
        |otherwise = helper (div number 10 )  ((result *10) + (mod number 10))

