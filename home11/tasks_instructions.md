# For home

# Task 1

Define a new data type representing a binary tree of whole numbers. By using it, firstTree and secondTree define a function that returns the sum of the nodes with values between L and R (inclusive).

firstTree:

Alt text

secondTree:

Alt text

Test cases:

print $ rangedSum firstTree 100 50 == 0 -- (L = 100, R = 50)
print $ rangedSum firstTree 7 15 == 32 -- (L = 7, R = 15)
print $ rangedSum firstTree 15 7 == 32 -- (L = 15, R = 7)
print $ rangedSum secondTree 6 10 == 23 -- (L = 6, R = 10)
print $ rangedSum secondTree 10 6 == 23 -- (L = 10, R = 6)

# Task 2

Define a function that modifies a BST so that every node n has a new value equal to the sum of the values of the original tree that are greater than or equal to the value of n.

Alt text

Test case:

print $ convert tree == (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))

# Task 3

A binary tree is a cone if at every level the sum of the nodes is greater than than the sum at the previous level.

Define a function that:

    returns the sum of the nodes at level k;
    returns whether a tree is a cone.

Use the following representation of a binary tree:

data BTree = Nil | BTree Int BTree BTree

numberBTree:

Alt text

Test cases:

print $ levelSum numberBTree 1 == 11 -- (5 + 6)
print $ cone numberBTree == True

# Task 4

Alt_text Alt_text
