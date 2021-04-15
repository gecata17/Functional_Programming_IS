
main :: IO()
main = do 

    print $ sumofEvenly 1 10  == 41 --2+3+5+6+7+8+10
    print $ sumofEvenly 5 20  == 175 --5+6+7+8+10+11+12+13+14+15+17+18+19+20
    print $ sumofEvenly 3 20  == 178

countDivisors::Int->Int 
countDivisors 0 = 0
countDivisors n 
 |n < 1 = error "n was not natural"
 |otherwise = helper 1
  where
      helper :: Int->Int
      helper currDivisor
       |currDivisor>=n = 1
       |mod n currDivisor == 0 = 1 + helper (currDivisor+1)
       |otherwise = helper (currDivisor+1)

isEvenly::Int->Bool 
isEvenly n 
 |mod(countDivisors n ) 2 == 0 =True
 |otherwise = False

sumofEvenly :: Int -> Int -> Int 
sumofEvenly a b = helper (min a b) ((max a b ) +1)
 where
     helper start finish
      |start >= finish = 0
      |isEvenly start= start + helper (start + 1) finish 
      |otherwise = helper (start + 1) finish
    
