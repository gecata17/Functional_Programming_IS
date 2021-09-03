main :: IO()
main = do 
      print $ (switchsum (\x -> x+1) (\x->x*2) 1 ) 2 == 3
      print $ (switchsum (\x -> x+1) (\x->x*2) 2)  2 == 9
      print $ (switchsum (\x -> x+1) (\x->x*2) 3 ) 2 == 16
      print $ (switchsum (\x -> x+1) (\x->x*2) 4 ) 2 == 30

switchsum::(Int->Int) ->(Int->Int)->Int->(Int->Int)
switchsum f g n = wholeSum
  where
       wholeSum :: Int ->Int
       wholeSum x = sum (map(\y->(switch f g y )x) [1 .. n])

     


switch::(Int->Int) ->(Int->Int)->Int->(Int->Int)
switch f g n
 |n == 1 = f 
 | mod n 2 == 0 = g . switchsum f g (n-1)
 |otherwise = f . switchsum f g (n-1)

