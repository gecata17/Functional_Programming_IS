# Task 1

Define a function that accepts:

    a function and returns a lambda that accepts an argument and applies that function to it;
    a predicate and returns a lambda that accepts a number and applies the negated predicate to it;
    two functions and returns their composition over an argument;
    returns a function that is the partial application of f over x;
    (\ x y z -> x y z) (\ x y -> x + y) 5 6 -- What will the output be?

Implementation detail:

Use type annotations!

Test cases:

print $ (myLambda (\ x -> x)) 5 == 5
print $ (myLambda (\ x -> x)) "Hello" == "Hello"
print $ (myLambda (+1)) 5 == 6
print $ (negatePred (\x -> mod x 2 == 0)) 2 == False
print $ (compose (\x -> x - 5) (\y -> y + 25)) 5 == 25
print $ (compose group sort) "Hello World" == [" ","H","W","d","e","lll","oo","r"]
print $ (partiallyApply (\x y -> 10 * x + y) 5) 10 == 60

# Task 2

Define the function that accepts an unary function - f, and returns a lambda of two real numbers - x, y, and subtracts f(x) from f(y).

Implementation detail:

Solve the task with one line of code!
Initially use Double, but then transition to all number types.

Test cases:

print $ (difference (\x -> 2 * x)) 15.16 15.20 == 7.99999999999983e-2
print $ (difference (\x -> 2 * x)) 8.5 8 == -1.0

# Task 3

Define a function that accepts a one-argument function f and a number y and returns a one-argument function that for every x returns:

    y, if it is greater than or equal to the result of applying f to x;
    the result of applying f to x, otherwise.

Implementation detail:

Solve the task with one line of code!
Initially use Double, but then transition to all number types.

Test cases:

If g is upperBound (*2) 100
    then g 50 -> 100
If g is upperBound (*2) 100.236
    then g 500.002 -> 1000.004
If g is upperBound (\x -> x) 1.001
    then g 1.001 -> 1.001

# Task 4

Write a function that outputs the sum of the tuple (x1, x2).

    solve with pattern matching;
    solve without pattern matching;
    solve using a lambda.

Test cases:

print $ sumTuple (4, 5) == 9
print $ sumTuple (-5, 5) == 0

# Task 5

Write a function that takes two parameters a and b and returns the tuple (x, y) where x is the whole number division between a and b and y is their modular number division.

    solve with pattern matching;
    solve without pattern matching;
    solve using a lambda.

Implementation detail:

Initially use Int, but then transition to Point.

Test cases:

print $ dividePM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
print $ dividePM (5, 10) == (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5
print $ divideNonPM (10, 5) == (2, 0)
print $ divideNonPM (5, 10) == (0, 5)

# Task 6

Define the Rat data type that is the tuple (x, y) where x is the nominator and y - the denominator of a rational number. Define a function called normalize which will simplify the nominator and denominator (so that their highest common denominator is 1).

Implementation Detail:

Use the type annotation!

Test cases:

print $ normalize (4, 2) == (2, 1)
print $ normalize (8, 4) == (2, 1)
print $ normalize (2, 4) == (1, 2)

# Task 7

Define a function that returns a list of tuples (x, y) where y is the square of x.

Note:

x goes from a to b with a step k.

Test cases:

print $ getSquares 0 100 10 == [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

# Task 8

Define the Vector data type that is the tuple (x, y, z). Define the following functions:

sumVectors - returns the sum of two vectors;
scaleVector - returns a vector scaled by a number.

Implementation Detail:

Use the type annotation!

Test cases:

print $ sumVectors (1, 2, 3) (4, 5, 6) == (5, 7, 9)
print $ sumVectors (0, 0, 0) (100, 200, -300) == (100, 200, -300)

print $ scaleVector (1, 2, 3) 5 == (5, 10, 15)
print $ scaleVector (5, 2, 159) -2 == (-10, -4, -318)

