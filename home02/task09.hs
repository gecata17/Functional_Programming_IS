main :: IO()
main = do
     print $ removeD 1 656 == 656
     print $ removeD 5 656 == 66
     print $ removeD 6 656 == 5
     print $ removeD 0 606 == 66
     print $ removeD 0 600 == 6
     print $ removeD 6 600 == 0

removeD :: Int -> Int -> Int 
removeD d n 
 |n < 1 = error "n was negative"
 |otherwise = helper d 1 result
  where
       helper :: Int -> Int -> Int -> Int
       helper currentDigit n result
        |n < 10 = result 
        |currentDigit==div( 10)
        |otherwise = currentDigit (n+1) (n*result)

--problem with the algorithm
