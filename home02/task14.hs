main :: IO()
main = do
    print $ isSquare 1 ==True  
    print $ isSquare 2 ==False
    print $ isSquare 4 == True
    print $ isSquare 17 ==False
    print $ isSquare 256 == True 
    print $ isSquare 2500 == True

isSquare :: Int -> Bool 
isSquare 0 = False
isSquare 1 = True
isSquare n 
 |n < 0 = error "n was negative"
 |otherwise = helper 1
  where
      helper ::Int -> Bool
      helper currentDivisor
       |currentDivisor >= div n 2 + 1 = False
       | currentDivisor * currentDivisor == n = True 
       |otherwise = helper(currentDivisor +1)
