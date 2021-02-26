# Task 1

Define functions that return:

    the smaller of two whole numbers:
        add a test with negative numbers;
        using if-else;
        using guards.

    the last digit of a number.

    the quotient of the division of two whole numbers.

    the quotient and remainder of the division of two whole numbers.

    a whole number without its last digit.

    the quotient and remainder of the division of two real numbers.

    the quotient of the division of two real numbers.

    the average of two whole numbers.

    Test cases:

     print $ min 5 6 == 5
     print $ minIf (-60) (-15) == (-60)
     print $ minIf 15 60 == 15
     print $ minIf 60 15 == 15
     print $ minGuard 15 60 == 15
     print $ minGuard 60 15 == 15

     print $ lastDigit 154 == 4

     print $ quotientWhole 64 2 == 32
     print $ divWhole 154 17 == 9.058823529411764

     print $ removeLastDigit 154 == 15    

     print $ divReal 154 10 == 15.4
     print $ quotientReal 154.21 17.17 == 9

     print $ averageWhole 5 1542 == 773.5

# Task 2

Define a predicates that check:

    whether two numbers are not equal:
        in one line without using if-else;
        using guards.

    whether a whole number x is between two whole numbers - a and b in one line without using if-else.

    Test cases:

     print $ areNotEqualOneLine 5 2 == True
     print $ areNotEqualOneLine 5 5 == False
     print $ areNotEqualGuards 5 2 == True
     print $ areNotEqualGuards 5 5 == False
     print $ inside 1 5 4 == True -- a = 1, b = 5, x = 4
     print $ inside 5 1 4 == True
     print $ inside 10 50 20 == True
     print $ inside 10 50 1 == False

# Task 3

Define a recursive and an iterative function for calculating the factorial of a non-negative whole number:

    add a test case with a negative number;
    using pattern matching;
    using guards.

Test cases:

print $ factPM 11 == 39916800
print $ factGuards 11 == 39916800
print $ factIter 11 == 39916800

# Task 4

Define a recursive function for calculating the number at index i in the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...).

    add a test case with a negative number.

Test cases:

print $ fib 11 == 89
