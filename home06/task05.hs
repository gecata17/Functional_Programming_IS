main :: IO()
main = do 

       print $ liesOnF (lineF (0,0) (1,1)) (5.5,5.5) == True
       print $ liesOnF (lineF (0,0) (1,1)) (0.5,0)  == False





type Point = (Double,Double)
lineF::Point->Point->(Double->Double)
lineF (x1,y1) (x2,y2) = (\x->y1+(x-x1)*(y2-y1)/(x2-x1))

liesOnF::(Double->Double)->(Point->Bool)
liesOnF f = (\(x, y) -> y == f x )
