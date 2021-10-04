main :: IO()
main = do 
    print $ highestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Bulgaria"

type Name = String
type Capital = Name
type AvgYearlyTemperature = Double
type Elevation = Int

data City = City Name Elevation AvgYearlyTemperature deriving(Read, Show)
data Country = Country Name Capital [City] deriving(Read, Show)


highestCapital :: [Country] -> Name
highestCapital allCountries = capWithMaxHeight
    where
        listOfCapsAndEls =  [(countName, capName, citEl) | (Country countName capName listCities) <- allCountries, (City citName citEl _) <- listCities, capName == citName]
        maxHeight = maximum [ x | (_, _,x) <- listOfCapsAndEls]
        capWithMaxHeight = head [ x | (x, y, z) <- listOfCapsAndEls, z == maxHeight]