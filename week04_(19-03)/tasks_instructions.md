All tasks work with whole numbers unless stated otherwise!
# Task 1

Define predicates that check whether a list has at least one element.

Implementation detail:

- Solve using pattern matching.
- Solve using functions.

Test cases:

print $ hasElementsPM [] == False
print $ hasElementsPM [1, 2, 3] == True
print $ hasElementsFunc [] == False
print $ hasElementsFunc [1, 2, 3] == True

# Task 2

Write functions that return the number of elements in a list.

Implementation detail:

- Solve using a linearly recursive process WITHOUT pattern matching.
- Solve using a linearly recursive process WITH pattern matching.
- Solve using functions.

Test cases:

print $ myLengthRecNonPM [] == 0
print $ myLengthRecNonPM [1, 2, 3] == 3
print $ myLengthRecPM [] == 0
print $ myLengthRecPM [1, 2, 3] == 3
print $ myLengthFunc [] == 0
print $ myLengthFunc [1, 2, 3] == 3

# Task 3

Write a function that generates a list made up of the numbers in the interval [a, b].

Implementation detail:

Solve the task in one line of code.

Test cases:

print $ getClosedInteval 1 9 == [1, 2, 3, 4, 5, 6, 7, 8, 9]
print $ getClosedInteval 9 1 == [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Task 4

Write a predicate that checks whether a whole number x is between two whole numbers - a and b.

Implementation detail:

Solve the task in one line of code.

Test cases:

print $ inside 1 5 4 == True -- a = 1, b = 5, x = 4
print $ inside 5 1 4 == True
print $ inside 10 50 20 == True
print $ inside 10 50 1 == False

# Task 5

Write a function that removes the first element in a list that is equal to x by going from left to right.

Test cases:

print $ removeFirst 5 [5, 1, 5, 3, 5] == [1, 5, 3, 5]
print $ removeFirst 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

# Task 6

Write a function that removes every element equal to x in a list.

Test cases:

print $ removeAll 5 [5] == []
print $ removeAll 4 [4, 4] == []
print $ removeAll 5 [1] == [1]
print $ removeAll 5 [5, 1, 5, 3, 5] == [1, 3]
print $ removeAll 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

# Task 7

Write a function increments all the values in a list by a given number.

Implementation details:

    Solve using list comprehension.
    Solve using higher order functions.

Test cases:

print $ incrementByLC 5 [5] == [10]
print $ incrementByLC 4 [4, 4] == [8, 8]
print $ incrementByLC 5 [1] == [6]
print $ incrementByLC 5 [5, 1, 5, 3, 5] == [10, 6, 10, 8, 10]
print $ incrementByLC 3 [5, 1, 5, 3, 5] == [8, 4, 8, 6, 8]
print $ incrementByHOF 5 [5] == [10]
print $ incrementByHOF 4 [4, 4] == [8, 8]
print $ incrementByHOF 5 [1] == [6]
print $ incrementByHOF 5 [5, 1, 5, 3, 5] == [10, 6, 10, 8, 10]
print $ incrementByHOF 3 [5, 1, 5, 3, 5] == [8, 4, 8, 6, 8]

 # (!!) Task 8 (!!)

In ONE line of code:

    Reverse a number;
    Check whether a number is prime;
    Returns the sum of the digits of a number;
    Find the sum of the divisors of a number.

Test cases:

print $ rev 123 == 321
print $ isPrime 5 == True
print $ isPrime 6 == False
print $ isPrime 11 == True
print $ isPrime 13 == True
print $ sumDig 142500 == 12
print $ sumDivs 161 == 192

# Task 9

Define a function that returns the prime numbers in the range (a, b) that end with the digit 7.

    Solve using list comprehension in ONE line of code.
    Solve using higher order functions in ONE line of code.

Test cases:

print $ getPrimesLC 1 100 == [7,17,37,47,67,71,73,79,97]
print $ getPrimesLC 100 1 == [7,17,37,47,67,71,73,79,97]
print $ getPrimesHOF 1 100 == [7,17,37,47,67,71,73,79,97]
print $ getPrimesHOF 100 1 == [7,17,37,47,67,71,73,79,97]
