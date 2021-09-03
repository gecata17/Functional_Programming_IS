# Task 1

Define a function that accepts an unary function and a list of numbers [y1, y2 .. yn] and returns an unary function that for every x calculates the expression f(y1 * x) + 2 * f(y2 * x) + .. + n * f(yn * x) .

Implementation detail:

Solve the task with one line of code!

Test cases:

If g is myPolynomial (\x -> x - 2) [],
    then g 5 -> 0
If g is myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2],
    then g (-5) -> -356.45
If g is myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2]
    then g 5 -> 453

# Task 2

Define a function that accepts two one-argument functions "f" and "g" and a list of values and checks whether f dominates g. We say that one function dominates another if for every value the absolute value after applying "f" is greater than or equal to the absolute value after applying "g".

Implementation detail:

Solve the task with one line of code using folding.

Test cases:

print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] == False
print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] == True

# Task 3

Define a function that takes a word and returns a list of tuples in the form (x, xCount) where for each letter x, xCount is the number of times it is present in the word. Ignore capitalization and make sure that the string contains at least one letter.

Test cases:

print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]

# Task 4

Alt text

Test cases:

print $ splitPoints (1, 1) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)] --([(1.0, 2.0), (2.0, 3.0), (-1.0, 1.0)], [(10.0, 15.0), (12.0, 14.0)])
print $ splitPoints (10, 10) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)] -- ([(10.0, 15.0), (12.0, 14.0)], [(1.0, 2.0), (2.0, 3.0), (-1.0, 1.0)])
print $ splitPoints (0, 0) 2 [(0, 0), (1, 1), (2, 2), (0, 2)] -- ([(0.0,0.0),(1.0,1.0),(0.0,2.0)],[(2.0,2.0)])
--print $ splitPoints (0, 0) (-1) [(0, 0), (1, 1), (2, 2), (0, 2)] -- Should give an error

# Task 5

By using the following types define a function that accepts a list of records and returns the hardest subject.

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

Test cases:

print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

