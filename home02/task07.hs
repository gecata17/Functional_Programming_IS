main :: IO()
main = do
     print $ isInteresting 410 ==True 
     print $ isInteresting 567==False
     print $ isInteresting 4==True 
     print $ isInteresting (-3)
     

sumDigitsRec :: Int -> Int  
sumDigitsRec n 
 |n < 0 = error "n was not positive"
 |n < 10 = n
 | otherwise = mod n 10 +sumDigitsRec (div n 10)
  
isInteresting :: Int -> Bool
isInteresting n
 |n < 0 = error "n was not positive"
 |n < 10 = True 
 |otherwise  = helper 1
  where
     helper :: Int-> Bool
     helper currentDivisor
       |mod n (sumDigitsRec currentDivisor) == 0 = True
       |otherwise =helper (currentDivisor+1)

 -- not sure what is missing to work for all cases
