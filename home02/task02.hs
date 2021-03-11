main :: IO ()
main = do
    print $ sumDigitsIter 9  == 9
    print $ sumDigitsIter 12345  ==15 
    print $ sumDigitsIter 123 == 6
    print $ sumDigitsIter (-13) -- error "n was negative" 


sumDigitsIter :: Int -> Int
sumDigitsIter n =helper n 0
  where
      helper :: Int -> Int -> Int
      helper n result
       | n < 0 = error "n was negative"
       | n < 10 = result + n
       |otherwise = helper   (div n 10) (result+(mod n 10))
