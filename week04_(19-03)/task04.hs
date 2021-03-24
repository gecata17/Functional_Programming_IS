main :: IO()
main =  do
     print $ inside 1 5 4 == True -- a = 1, b = 5, x = 4
     print $ inside 5 1 4 == True
     print $ inside 10 50 20 == True
     print $ inside 10 50 1 == False

inside :: Int->Int->Int ->Bool
inside x y n = elem n [min x y .. max x y]
