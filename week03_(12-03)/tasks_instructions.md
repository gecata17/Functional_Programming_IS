# Task 1

A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. Define a predicate that checks whether a given number is a Narcissistic number in base 10.

For example, take 153 (3 digits):

1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1634 (4 digits):

1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

Test cases:

print $ isNarcissistic 7 == True
print $ isNarcissistic 12 == False
print $ isNarcissistic 370 == True
print $ isNarcissistic 371 == True
print $ isNarcissistic 1634 == True

# Task 2

Define an iterative function that accepts two real numbers x and n and calculates the following sum: 1 + x + x^2 + x^3 + ... + x^n.

Test cases:

print $ calculateSum 5 0 == 1
print $ calculateSum 5 1 == 6
print $ calculateSum 10 1 == 11
print $ calculateSum 1 11 == 12
print $ calculateSum 2 11 == 4095

# Task 3

Write a function that finds the maximum digit in a number by searching from right to left.

Test cases:

print $ findMax 55345 == 5
print $ findMax 14752 == 7
print $ findMax 329450 == 9
print $ findMax 9521 == 9

# Task 4

Define a function that removes the first occurrence of a digit in a number by going from right to left.

Test cases:

print $ removeFistOccurrence 15365 5 == 1536
print $ removeFistOccurrence 15360 0 == 1536
print $ removeFistOccurrence 15300 0 == 1530
print $ removeFistOccurrence 15365 1 == 5365
print $ removeFistOccurrence 35365 3 == 3565
print $ removeFistOccurrence 1212 1 == 122
print $ removeFistOccurrence 1212 2 == 121
print $ removeFistOccurrence (removeFistOccurrence 1212 1) 1 == 22

# Task 5

Define a function that sorts a number in descending order.

Test cases:

print $ sortN 1714 == 7411
print $ sortN 123450 == 543210
print $ sortN 123405 == 543210
print $ sortN 123045 == 543210
print $ sortN 120345 == 543210
print $ sortN 102345 == 543210
print $ sortN 8910 == 9810
print $ sortN 321 == 321
print $ sortN 29210 == 92210
print $ sortN 1230 == 3210
print $ sortN 55345 == 55543
print $ sortN 14752 == 75421
print $ sortN 329450 == 954320
print $ sortN 9125 == 9521
