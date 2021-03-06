# Task 1

Define a predicate that checks whether a non-negative number is a palindrome.

Test cases:

print $ isPalindrome 1 == True
print $ isPalindrome 6 == True
print $ isPalindrome 1010 == False
print $ isPalindrome 505 == True
print $ isPalindrome 123321 == True
print $ isPalindrome 654 == False
print $ isPalindrome 121 == True
print $ isPalindrome 12 == False
print $ isPalindrome 120 == False
print $ isPalindrome 12321 == True
print $ isPalindrome 1221 == True

Hint:

A number is a palindrome if and only if it is the same number from right to left as well as from left to right.

# Task 2

Define a function that returns the number of occurrences of a given digit in a given positive number.

Test cases:

print $ countOccurences 121 1 == 2

# Task 3

Define an iterative function for calculating the number at index i in the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...).

Test cases:

print $ fibIter 0 == 0
print $ fibIter 1 == 1
print $ fibIter 2 == 1
print $ fibIter 3 == 2
print $ fibIter 11 == 89
print $ fibIter 110 == 43566776258854844738105

# Task 4

Define a recursive function for calculating the sum of the digits of a positive number.

Test cases:

print $ sumDigitsRec 12345 == 15
print $ sumDigitsRec 123 == 6

# Task 5

Define a recursive and an iterative function for calculating x to the power of n, where x is real and n is positive.

Test cases:

print $ powRec 2 5 == 32
print $ powRec 15 3 == 3375
print $ powIter 2 5 == 32
print $ powIter 15 3 == 3375
--print $ powRec 2 0 == 1 -- should return an error

# Task 6

Define a predicate that checks whether a number is prime.

Test cases:

print $ isPrime 1 == False
print $ isPrime 2 == True
print $ isPrime 3 == True
print $ isPrime 6 == False
print $ isPrime 61 == True

Hint:

A number - n, is prime if and only if it is natural and its only divisors are 1 and n.

# Task 7

Define a function that returns the sum of the divisors of a non-negative number.

Test cases:

print $ sumDivs 0 == 0
print $ sumDivs 1 == 1
print $ sumDivs 6 == 12 -- 1 + 2 + 3 + 6
print $ sumDivs 12345 == 19776
