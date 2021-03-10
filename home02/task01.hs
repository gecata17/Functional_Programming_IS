main :: IO ()
main = do
    print $ countDigitsRec 6 == 1
    print $ countDigitsRec 12345 == 5
    print $ countDigitsRec 123 == 3 
    print $ countDigitsIter 12345 == 5 
    print $ countDigitsIter 123 == 3
countDigitsRec :: Int -> Int 
countDigitsRec n
 |n < 0 = error "n was negative"
 |n < 10 = 1
 |otherwise = countDigitsRec(div n 10) + 1

countDigitsIter :: Int -> Int
countDigitsIter n = helper n 1
 where
     helper :: Int -> Int -> Int
     helper n result
      |n < 0 = error "n was negative"
      |n < 10 = result
      |otherwise = helper (div n 10) (result+1)
