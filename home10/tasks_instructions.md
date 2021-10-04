# For home

# Task 1

Define a function that accepts an infinite list of numbers [x1, x2 .. ] and returns a function that for every x and y calculates the expression (x - x1) * (x - x2) * .. * (x - xy).

Test case:

If g is myPoly [2.7, 3.0 ..]
    then g 2.2 3 -> -0.4399999999999998

# Task 2

Define a function that accepts a list of countries and returns the name of the country with the highest capital, i.e. the capital on the highest elevation.

Use the following types:

type Name = String
type Capital = Name
type AvgYearlyTemperature = Double
type Elevation = Int
data City = City Name Elevation AvgYearlyTemperature
data Country = Country Name Capital [City]

Implementation detail:

!! SOLVE THE TASK USING FOLDRING !!

Test cases:

print $ highestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Bulgaria"

# Task 3

Define a function that returns the depth of the deepest blue node.

Use the following types:

data Color = Red | Green | Blue
data Tree = Empty | Node Color Tree Tree

colorTree:

       Blue
      /    \
   Red      Red
   /        /  
Green     Blue  
          /   \
       Green  Red

Test case:

print $ maxDepthBlueNode colorTree == 3

# Task 4

tree_task2
