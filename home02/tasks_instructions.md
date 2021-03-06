# For home
# Task 1

Define a recursive and an iterative function for calculating the number of digits of a non-negative number.

Implementation detail:

Use guards!

Test cases:

--print $ countDigitsRec (-13) -- error "n was negative"
print $ countDigitsRec 12345 == 5
print $ countDigitsRec 123 == 3
print $ countDigitsIter 12345 == 5
print $ countDigitsIter 123 == 3

# Task 2

Define an iterative function for calculating the sum of the digits of a non-negative number.

Test cases:

-- print $ sumDigitsIter (-13) -- error "n was negative"
print $ sumDigitsIter 12345 == 15
print $ sumDigitsIter 123 == 6

# Task 3

Define a function that returns the sum of all prime divisors of a given number.

Test cases:

print $ sumPrimeDivs 6 == 5 -- 2 + 3
print $ sumPrimeDivs 18 == 5 -- 2 + 3
print $ sumPrimeDivs 45136 == 53

# Task 4

Define a predicate that checks whether a number is perfect.

Test cases:

print $ isPerfect 1 == False -- the sum of the divisors is 0, because of the hint
print $ isPerfect 6 == True -- 1 + 2 + 3 = 6 = 6
print $ isPerfect 495 == False
print $ isPerfect 33550336 == True

Hint:

A number is perfect if and only if it is natural and equal to the sum of its divisors that are less than n.

# Task 5

Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

Test cases:

print $ hasIncDigits 1244 == True
print $ hasIncDigits 12443 == False

# Task 6

Define a predicate that checks whether two numbers are amicable.

Test cases:

print $ areAmicable 200 300 == False
print $ areAmicable 220 284 == True
print $ areAmicable 284 220 == True
print $ areAmicable 1184 1210 == True
print $ areAmicable 2620 2924 == True
print $ areAmicable 6232 6368 == True

Hint:

Two numbers are amicable if the sum of the divisors of one of them is equal to the other.

# Task 7

A number is interesting if and only if it is evenly divided by the sum of its digits. Define a predicate that checks whether a number is interesting.

Test case:

print $ isInteresting 410 == True

# Task 8

Given a divisor d and a bound b, find the largest integer N, such that:

*N* is divisible by *d*
and *N* is less than or equal to *b*
and *N* is greater than 0.

Test cases:

print $ maxMultiple 2 7 == 6
print $ maxMultiple 3 10 == 9
print $ maxMultiple 7 17 == 14
print $ maxMultiple 10 50 == 50
print $ maxMultiple 37 200 == 185
print $ maxMultiple 7 100 == 98

# Task 9

Write a function that removes the digit d from the number n.

Test cases:

print $ removeD 1 656 == 656
print $ removeD 5 656 == 66
print $ removeD 6 656 == 5
print $ removeD 0 606 == 66
print $ removeD 0 600 == 6
print $ removeD 6 600 == 0

# Task 10

Write a function that forms a number from every other digit starting from the right of an integer n (n >= 10).

Test cases:

print $ everyOther 12 == 1
print $ everyOther 852369 == 628
print $ everyOther 1714 == 11
print $ everyOther 12345 == 42
print $ everyOther 891 == 9
print $ everyOther 123 == 2
print $ everyOther 2121 == 22
print $ everyOther 4736778 == 767
print $ everyOther 448575 == 784
print $ everyOther 4214 == 14

# Task 11

Define a function that takes two numbers and returns the number of palindromes between them.

Test cases:

print $ countPalindromes 5 13 == 5 -- 6 7 8 9 11
print $ countPalindromes 13 5 == 5 -- 6 7 8 9 11

# Task 12

Define a predicate that accepts a number and returns if and only if the number is prime and every number that is produced by removing digits from right to left is prime.

Test cases:

print $ truncatablePrime 3797 == True -- 3797, 379, 37 and 3 are all prime
print $ truncatablePrime 47 == False -- 47 is prime, but 4 is not

# Task 13

Write a function that accepts three whole numbers - a, b and n (n > 3) and returns the sum of the last three numbers from the following sequence.

Alt text

Test cases:

print $ findSum 0 2 10 == 3578 -- 510 + 1022 + 2046
print $ findSum 5 3 5 == 174 -- 26 + 50 + 98

Explanations:

In the first example a = 0, b = 2, n = 10. The resulting sequence is therefore s0, s1, s2, ...

    s0 = 0 + 1 * 2 = 2
    s1 = 0 + 1 * 2 + 2 * 2 = 6
    s2 = 0 + 1 * 2 + 2 * 2 + 4 * 2 = 14 and so on.

In the second example a = 5, b = 3, n = 5. The resulting sequence is therefore s0, s1, s2, ...

    s0 = 5 + 1 * 3 = 2
    s1 = 5 + 1 * 3 + 2 * 3 = 6
    s2 = 5 + 1 * 3 + 2 * 3 + 4 * 3 = 14 and so on.

Note:

n will always be > 3.

# Task 14

Write a function that accepts an integer and checks whether it is a square of a number WITHOUT using sqrt.

Test cases:

print $ isSquare 1 == True
print $ isSquare 2 == False
print $ isSquare 4 == True
print $ isSquare 17 == False
print $ isSquare 256 == True
print $ isSquare 2500 == True

# Task 15

Write a function that accepts an integer n and a whole number k and checks whether every k digits from n are prime.

Test cases:

print $ isSpecial 131 2 == True
print $ isSpecial 472 2 == False
print $ isSpecial 17197 2 == True
print $ isSpecial 12234 3 == False
print $ isSpecial 10113 3 == True
print $ isSpecial 353 2 == False

# Task 16

Define a function that takes a whole number and returns its ascending right suffix.

Test cases:

print $ reverseOrdSuff 37563 == 36
print $ reverseOrdSuff 32763 == 367
print $ reverseOrdSuff 32567 == 7
print $ reverseOrdSuff 32666 == 6

# Task 17

Define a procedure sumSpecialPrimes n d that returns the sum of the first n prime numbers that contain a digit d.

Test cases:

print $ sumSpecialPrimes 5 2 == 392
print $ sumSpecialPrimes 5 3 == 107
print $ sumSpecialPrimes 10 3 == 462
