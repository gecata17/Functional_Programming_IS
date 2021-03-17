# For home
 # Task 1

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Test cases:

digital_root(16)
=> 1 + 6
=> 7
digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6
digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6
digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

# Task 2

Define a function that accepts two real numbers and calculates the n-th partial sum from the following sequence:

Alt text

Test cases:

-- you may get slightly different results eg. -1.047619047619100 on test 4 <- not a problem
print $ calcSeriesSum 1 0 == -2.0 -- x = 1, n = 0
print $ calcSeriesSum 1 1 == -0.6666666666666667
print $ calcSeriesSum 1 2 == -1.2000000000000002
print $ calcSeriesSum 1 3 == -1.047619047619048
print $ calcSeriesSum 1 4 == -1.0814814814814817
print $ calcSeriesSum 1 5 == -1.0753246753246755
print $ calcSeriesSum 1 6 == -1.0762718762718764

# Task 3

Define a predicate that accepts two non-negative inputs - x and y and checks whether x is a sub-number of y.

Test cases:

print $ subNum 123 5123783 == True -- x = 123, y = 5123783
print $ subNum 0 0 == True
print $ subNum 10 101 == True
print $ subNum 101 101 == True
print $ subNum 10 0 == False
print $ subNum 1253 5123783 == False
print $ subNum 12 0 == False

# Task 4

A number - x, is a pentagonal number if we can plot x poits in the form of a pentagon on a plain.

For example:

Alt text

Define an iterative function that accepts a natural number - n, and returns the n-th pentagonal number.

Test cases:

print $ p 1 == 1
print $ p 2 == 5
print $ p 3 == 12
print $ p 4 == 22
print $ p 5 == 35
print $ p 6 == 51

# Task 5

Define the function sine, that accepts a whole number and a real number (representing radians) and returns the n-th partial sum of sin(x).

Reference the formula for writing sin(x) around the origin:

Alt text

Test cases:

print $ mySin 100 1 == 0.8414709848078965 -- n = 100, x = 1
print $ mySin 100 0.5 == 0.479425538604203

# Task 6

You just landed a job as a Quality Assurance (QA) Engineer. Your job is to find bugs in programs. While going through the tasks we solved this week, you notice that the last solution does not pass all of your tests. Help your team by finding out why this problem happened and suggest how might the developers fix it.

Submit a .hs file with a working solution and a comment explaining why the problem occurred.

Hint:

Run the following test case:
removeFistOccurrence 8910 9

