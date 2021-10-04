main :: IO()
main = do
     print (closestToAverage [(Temp 1 23.6),(Temp 6 24.2),(Temp 11 24.2),(Temp 16 21.2),(Temp 21 23.8),(Temp 26 26.5),(Temp 31 24.5)])
data Measuring = Temp Int Float 

getDay::Measuring -> Int
getDay(Temp day temperature) = day

getTemperature::Measuring -> Float
getTemperature(Temp day temperature) = temperature

getAverageTemperature::[Float] -> Float
getAverageTemperature [] = 0.0
getAverageTemperature list = (sum list) / (fromIntegral (length list))


closestToAverage :: [Measuring] -> Int
closestToAverage [] = 0
closestToAverage measurings = 
  getDay (foldl1 (\ currentMeasuring@(Temp _ currentTemperature) bestMeasuring@(Temp _ bestTemperature) ->
      if abs (currentTemperature - averageTemperature) < abs (bestTemperature - averageTemperature) then currentMeasuring else bestMeasuring) measurings)
          where averageTemperature = getAverageTemperature [t | (Temp d t) <- measurings]