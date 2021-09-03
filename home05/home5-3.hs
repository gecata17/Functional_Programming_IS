main :: IO()
main = do 
     print $ specialSum 1 100 == 195 -- 61, 65, 69  


specialSum :: Int->Int ->Int
specialSum a b = sum [x |x<-[min a b .. max a b],mod (x-1) 4 == 0,isThere6 x]
    where
         isThere6 :: Int->Bool
         isThere6 0 = False 
         isThere6 num = (mod num 10 ) == 6 || isThere6 (div num 10)
      