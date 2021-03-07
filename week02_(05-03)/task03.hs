main :: IO ()
main = do 
    print $ fibIter 0 == 0
    print $ fibIter 1 == 1
    print $ fibIter 2 == 1
    print $ fibIter 3 == 2
    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105 

-- recursive way
fibRec :: Int -> Int 

fibRec 0 = 0 -- patters matching
fibRec 1 = 1
fibRec i
 |i < 0 = error "n was negative"
 | otherwise = fibRec (i-1) + fibRec (i-2)     

-- iterative way
fibIter :: Integer -> Integer -- no expressions at call
fibIter i = if i < 0 then error "n was negative" else helper 0 1 i
 where
     helper :: Integer -> Integer -> Integer -> Integer 
     helper i iNext 0 = i  -- (second way) leftOver==0==i  --  (third way) helper i _ 0 == i (--wildcard ) doesn't count the missing argument
     helper i iNext 1 =  iNext   -- (second way) leftOver == 1 =  iNext  --  (third way helper) _ iNext 1 = iNext (--wildcard )
     helper i iNext leftOver =   helper iNext (i + iNext) (leftOver-1)
      
