main ::IO()
main = do
     print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] -- == [785.4, 157.08, 125.66, 62.83]

type Cylinder = (Double,Double)

volumesC :: Cylinder ->Double
volumesC (x,y) =pi*x*x*y

getVolumes :: [Cylinder]->[Double]
getVolumes xs= [(volumesC  (z,t))|(z,t)<-xs]