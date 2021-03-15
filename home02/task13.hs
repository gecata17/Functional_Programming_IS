main :: IO()
main = do
    print $ findSum 0 2 10 == 3578-- 510 + 1022 + 2046 
    print $ findSum 5 3 5 == 174 -- 26 + 50 + 98

firstSum :: Int -> Int -> Int -> Int 
firstSum a b n = a + helper n 0
 where   
     helper 0 _ = 0
     helper leftOver power = 2^power*b + helper(leftOver-1) (power+1)
    
secondSum :: Int -> Int -> Int -> Int 
secondSum a b n = a + helper (n-1) 0
 where   
     helper 0 _ = 0
     helper leftOver power = 2^power*b + helper(leftOver-1) (power+1)
    
thirdSum :: Int -> Int -> Int -> Int 
thirdSum a b n = a + helper (n-2) 0
 where   
     helper 0 _ = 0
     helper leftOver power = 2^power*b + helper(leftOver-1) (power+1)
    

findSum :: Int -> Int -> Int -> Int 
findSum x y z = firstSum x y z + secondSum x y z +thirdSum x y z 
