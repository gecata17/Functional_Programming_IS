# For home

# Task 1

Define a function that returns the sum of the smallest and greatest palindrome divisors of a natural number greater than 1.

Test cases:

print $ getPalindromes 132465 == 8
print $ getPalindromes 654546 == 8
print $ getPalindromes 100001 == 100012
print $ getPalindromes 21612 == 21614
print $ getPalindromes 26362 == 26364

# Task 2

Check whether a seqence of numbers forms an arithmetic progression.
IF-ELSE AND GUARDS THAT RETURN TRUE OR FALSE ARE FORBIDDEN

Test cases:

print $ isArithmentic [3] == True
print $ isArithmentic [3, 5] == True
print $ isArithmentic [1, 2, 3, 4, 5] == True
print $ isArithmentic [3, 5, 7, 9, 11] == True
print $ isArithmentic [3, 5, 8, 9, 11] == False

Hint:

You may find the operator "!!" useful :).

# Task 3

Define a function that returns the sum of the special numbers in the interval [a, b] (a <= b). A number is special if it contains 6 and can be expressed as 4k + 1, where k is a whole number.

Implementation detail:

Solve the task with one line of code.

Test case:

print $ specialSum 1 100 == 195 -- 61, 65, 69

# Task 4

Define a function that takes a single argument function and returns it applied n times.

Test cases:

print $ (applyN (\x -> 2 * x) 5) 2 == 64
print $ (applyN (\x -> div x 10) 2) 100 == 1

Explanation:

We apply 2 * x first to 2, then to (2 * 2) and so on. Thus, we get: (((((2 * 2) * 2) * 2) * 2) * 2) => ((((4 * 2) * 2) * 2) * 2) => (((8 * 2) * 2) * 2) => ((16 * 2) * 2) => (32 * 2) => 64

# Task 5

Alt text
# Task 6

Alt text

# Task 7

Дефинирайте функция repeater str, която получава като аргумент символен низ и връща анонимна функция на два аргумента - count и glue (число и низ). Оценката на обръщението към върнатата функция е низ, който се получава чрез count-кратно повтаряне на низа str, при което между всеки две съседни повторения на str стои низът glue.

Implementation detail:

count will always be a natural number. You needn't validate it.

Test cases:

print $ (repeater "I love Haskell") 3 " " == "I love Haskell I love Haskell I love Haskell"
print $ (repeater "Quack") 5 "!" == "Quack!Quack!Quack!Quack!Quack"

# Task 8

For the Vector data type we defined in class, define the following functions:

dotProduct   - scalar product                 - скаларно произведение;
crossProduct - vector product                 - векторно произведение;
magnitude    - returns the length of a vector - дължината на вектор.

Implementation Detail:

Use the type annotation!

Test cases:

print $ dotProduct (1, 2, 3) (7, 4, 1) == (7, 8, 3)
print $ dotProduct (5, 2, 159) (0, -1, -2) == (0, -2, -318)

print $ crossProduct (1, 2, 3) (7, 4, 1) == (-10, 20, -10)
print $ crossProduct (5, 2, 159) (0, -1, -2) == (155, 10, -5)

print $ magnitude (1, 2, 3) == 3.7416573867739413
print $ magnitude (7, 4, 1) == 8.12403840463596
print $ magnitude (-10, 20, -10) == 24.49489742783178
print $ magnitude (5, 2, 159) == 159.0911688309568
print $ magnitude (0, -1, -2) == 2.23606797749979
print $ magnitude (155, 10, -5) == 155.40270267920053

