main ::IO()
main = do 
    print $ (myPoly [2.7, 3.0 ..]) 2.2 3 == (-0.4399999999999998)



myPoly :: [Double] -> (Double -> Int -> Double )
myPoly  ys = (\ x y -> product [x - i | i <- take y ys])
        
