# For home

# Task 1

Define a function that accepts a one-argument function and a list of numbers [y1, y2 .. yn] and returns a function that accepts "x" and calculates the expression: y1 * f(x) + y2 * f(x2) + .. + yn * f(xn) .

Test cases:

print $ (sumExpr (2+) [0, 1, 2, 3]) 2 == 80
print $ (sumExpr (*0.8) [0, 1, 2, 3, 4, 5]) 10 == 4345680.0

# Task 2

Define a function that accepts a list of countries and returns the name of the coldest country, i.e. the country with the lowest average yearly temperature.

Use the following types:

type Name = String
type Capital = Name
type AvgYearlyTemperature = Double
type Elevation = Int
data City = City Name Elevation AvgYearlyTemperature
data Country = Country Name Capital [City]

Implementation detail:

!! SOLVE THE TASK USING FOLDING !!

Test cases:

print $ coldestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Germany"

# Task 3

Define a function that accepts a list of points and returns a vector (Double, Point, Point) that represents the closest distance between any two points, and the points themselves.

Implementation detail:

In Data.List there is a helpful function - subsequences. It can help you by returning all possible combinations of two points (6 choose 2). Check it out by using the link in the main page of the repository.

Test case:

print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)

# Task 4

Define a function that returns all the uncles of a node in a tree.

Alt text

Use the following type and representation:

type Tree = [(Int, [Int])]

t :: Tree
t = [(1,[2,3,4]),(2,[5,6]),(3,[7]),(4,[8,9]),(5,[]),(6,[10]),(7,[]),(8,[]),(9,[]),(10,[])]

Test cases:

print $ findUncles t 5 == [3,4]
print $ findUncles t 7 == [2,4]
print $ findUncles t 10 == [5]
