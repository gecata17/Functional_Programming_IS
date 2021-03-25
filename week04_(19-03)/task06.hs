main :: IO ()
main = do
      print $ removeAll 5 [5] == []
      print $ removeAll 4 [4, 4] == []
      print $ removeAll 5 [1] == [1]
      print $ removeAll 5 [5, 1, 5, 3, 5] == [1, 3]
      print $ removeAll 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]
      print $ removeAllHFO 5 [1] == [1]
      print $ removeAllHFO 5 [5, 1, 5, 3, 5] == [1, 3]
      print $ removeAllHFO 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]


-- first way
removeAll :: Int ->[Int]->[Int]
removeAll _ [] = []
removeAll d (x:xs)
 |x == d = removeAll d xs
 |otherwise = x : removeAll d xs

-- second way
removeAllHFO :: Int->[Int]->[Int]
removeAllHFO d xs = filter (\x -> x /= d) xs -- d = filter (\x -> x /=d) functional level definition when last argument is missing
