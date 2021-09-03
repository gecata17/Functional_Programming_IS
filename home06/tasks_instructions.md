# For home


# Task 1

Define a function rf that takes two unary, whole-number functions as parameters - f and g and returns a binary function that takes a list - xs as its first argument, and an unary function - h as its second argument. The result from the call to rf should be a list containing elements of the form h(x) where x spans xs and f(x) > g(x).

Test case:

print $ (rf ((-) (-4)) (* (-2))) [1..10] (* 3) == [15,18,21,24,27,30] -- only 5, 6, 7, 8, 9 and 10 satisfy the condition        

# Task 2

Define a function that calculates the volume of a list of cylinders. Let the cylinder be expressed as the following: type Cylinder = (Double, Double), where the first coordinate is the radius and the second - its height.

Test case:

print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] == [785.4, 157.08, 125.66, 62.83]

# Task 3

By using the function normalize from last week, define the following functions for the Rat data type:

sumRats - returns the sum of two rational numbers
multiplyRats - returns the product of two rational numbers
divideRats - returns the quotient of two rational numbers
areEqual - returns whether two rational numbers are equal

Test cases:

print $ sumRats (2, 5) (5, 2) == (29, 10)
print $ sumRats (52, 123) (96, 14) == (6268, 861)
print $ sumRats (2, 5) (3, 5) == (1, 1)

print $ multiplyRats (2, 5) (5, 2) == (1, 1)
print $ multiplyRats (52, 123) (96, 14) == (832, 287)
print $ multiplyRats (2, 5) (3, 5) == (6, 25)

print $ divideRats (2, 5) (5, 2) == (4, 25)
print $ divideRats (52, 123) (96, 14) == (91, 1476)
print $ divideRats (2, 5) (3, 5) == (2, 3)

print $ areEqual (2, 5) (5, 2) == False
print $ areEqual (52, 123) (52 * 3, 123 * 3) == True
print $ areEqual (2, 6) (5, 15) == True

# Task 4

for-home

Sample database:

people1 :: [Person]
people1 = [(1, "Ivan", "Sofia"),(2, "Georgi", "Burgas"), (3, "Petar", "Plovdiv"),(4, "Petya", "Burgas")]

accounts1 :: [Account]
accounts1 = [(1, 1, 12.5),(2, 1, 123.2),(3, 2, 13.0),(4, 2, 50.2),(5, 2, 17.2),(6, 3, 18.3),(7, 4, 19.4)]

Test cases:

print $ getAverageBalance (accounts1, people1) (\(_,_,city) -> city == "Burgas") == 24.95
print $ getAverageBalance (accounts1, people1) (\(_,(n:_),_) -> n == 'P') == 18.85
print $ getAverageBalance (accounts1, people1) (\ (n,_,_) -> n ==2) == 26.8
print $ averageBalanceOfCities (accounts1,people1) ["Sofia","Gabrovo","Stara Zagora"] == 67.85
print $ averageBalanceOfCities (accounts1, people1) ["Sofia"] == 67.85
print $ averageBalanceOfCities (accounts1, people1) ["Burgas","Plovdiv"] == 23.62
print $ averageBalanceOfCities (accounts1,people1) ["Pleven", "Burgas", "Sofia","Gabrovo","Stara Zagora"] == 39.25
print $ averageBalanceOfCities (accounts1, people1) ["Sofia", "Gabrovo", "Burgas"] == 39.25

# Task 5

for-home-diag
# Task 6

Define a function that accepts a list of whole number one-argument functions [f1, f2 .. fn] and returns a function that for every x calculates the composition of the functions with odd indices: f1(f3(...(fnx)...)).

Implementation detail:

Solve the task with one line of code USING FOLDING.

Test case:

print $ (getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2

# Task 7

Write a function that sums the unique numbers in the sublists of a list n.

Test cases:

print $ sumUnique [[1,2,3,2],[-4,-4],[5]] == 9 -- (= 1 + 3 + 5)
print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]] == 0
print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]] == 45

# Task 8

Write a function returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Test cases:

print $ duplicateCount "" == 0 -- no characters repeats more than once
print $ duplicateCount "abcde" == 0
print $ duplicateCount "aabbcde" == 2 -- 'a' and 'b'
print $ duplicateCount "aabBcde" == 2 -- 'a' occurs twice and 'b' twice (`b` and `B`)
print $ duplicateCount "indivisibility" == 1 -- 'i' occurs six times
print $ duplicateCount "Indivisibility" == 1
print $ duplicateCount "aA11" == 2 -- 'a' and '1'
print $ duplicateCount "ABBA" == 2 -- 'A' and 'B' each occur twice
print $ duplicateCount "Indivisibilities" == 2 -- 'i' occurs seven times and 's' occurs twice
print $ duplicateCount ['a'..'z'] == 0
print $ duplicateCount (['a'..'z'] ++ ['A'..'Z']) == 26

# Task 9

Define a function that accepts a string and removes all duplicate letters

Note:

Two characters are duplicate, if:
    - they represent the same character;
    - they are next to each other;
    - the first is upper-case and the second - lower-case (or vice versa).

Test case:

print $ reduceStr "dabAcCaCBAcCcaDD" == "dabCBAcaDD" -- dabAcCaCBAcCcaDD -> dabAaCBAcCcaDD -> dabCBAcCcaDD -> dabCBAcaDD
                                                            ^^                 ^^                   ^^

# Task 10

Define a function that accepts a number and returns the tuple (x, y) where x is the sum of the digits on even indices of the number and y - the sum of the ones on odd indices.

Test cases:

print $ checkNumber 2728 == (4,15)
print $ checkNumber 31415 == (12,2)
print $ checkNumber 121 == (2,2)

Implementation detail:

Solve the task with one line of code using folding.

