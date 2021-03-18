main :: IO()
main = do

      print $ p 1 == 1 
      print $ p 2 == 5 
      print $ p 3 == 12 
      print $ p 4 == 22 
      print $ p 5 == 35 
      print $ p 6 == 51

p :: Int -> Int
p n = floor(value / 2)
    where
        value = fromIntegral (n * (3 * n - 1)) 
