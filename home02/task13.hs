main :: IO()
main = do
    print $ findSum 0 2 10 == 3578 -- 510 + 1022 + 2046 
    print $ findSum 5 3 5 == 174 -- 26 + 50 + 98

firstSum :: Int -> Int -> Int -> Int 
firstSum a b n
 |n <= 3 = error "n is not right"
 |otherwise = helper a b n 1
 where   
     helper :: Int -> Int -> Int -> Int -> Int
     helper firstNum secondNum thirdNum result=helper (result+firstNum) ((2^(result+1) )*secondNum) (thirdNum) result
    
secondSum :: Int -> Int -> Int -> Int 
secondSum  a b n
 |n <= 3 = error "n is not right"
 |otherwise = helper a b n 1
 where   
     helper :: Int -> Int -> Int -> Int -> Int
     helper firstNum secondNum thirdNum result=helper (result+firstNum) ((2^(result+1) )*secondNum) (thirdNum-1) result
    
thirdSum :: Int -> Int -> Int -> Int 
thirdSum  a b n
 |n <= 3 = error "n is not right"
 |otherwise = helper a b n 1
 where   
     helper :: Int -> Int -> Int -> Int -> Int
     helper firstNum secondNum thirdNum result=helper (result+firstNum) ((2^(result+1) )*secondNum) (thirdNum-2) result
    



findSum :: Int -> Int -> Int -> Int 
findSum x y z = firstSum x y z + secondSum x y z + thirdSum x y z
