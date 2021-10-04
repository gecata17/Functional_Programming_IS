# For home

# Task 1

For the trees in task 1 (that we solved in class) define the following functions:

​​height (number of nodes along the longest branch);​
average - returns the average of the nodes (should work only for trees that store numbers in their nodes);
​​sumLeaves​ - returns the sum of the leaves (should work only for trees that store numbers in their nodes);
areEqual - checks whether two trees are identical (!! USING '==' IS FORBIDDEN !!);
setLevels - replaces the values in all nodes with the vector ("level", "value");
mirrorTree - returns the symmetric tree.

Test cases:

print $ height numberBTree == 4
print $ height charBTree == 3

print $ average numberBTree == 16.22
--print $ average charBTree -- should not work

print $ sumLeaves numberBTree == 119
--print $ sumLeaves charBTree -- shouldn't work

print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) == False
print $ areEqual charBTree charBTree == True
print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) == False

print $ setLevels numberBTree == Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Nil Nil) Nil) (Node (2,0) Nil Nil)) (Node (1,4) (Node (2,2) Nil Nil) (Node (2,5) Nil (Node (3,21) Nil Nil)))
print $ setLevels charBTree == Node (0,'k') (Node (1,'a') (Node (2,'h') Nil Nil) (Node (2,'s') Nil Nil)) (Node (1,'l') (Node (2,'e') Nil Nil) (Node (2,'l') Nil Nil))

print $ mirrorTree numberBTree == Node 5 (Node 4 (Node 5 (Node 21 Nil Nil) Nil) (Node 2 Nil Nil)) (Node 12 (Node 0 Nil Nil) (Node 1 Nil (Node 96 Nil Nil)))
print $ mirrorTree charBTree == Node 'k' (Node 'l' (Node 'l' Nil Nil) (Node 'e' Nil Nil)) (Node 'a' (Node 's' Nil Nil) (Node 'h' Nil Nil))

# Task 2

Define a function that returns the depth of the shallowest green node.

Use the following types:

data Color = Red | Green | Blue
data Tree = Empty | Node Color Tree Tree

colorTree:

            Blue
           /    \
        Red      Red
        /        /  
     Green     Blue  
               /   \
            Green  Red

Test case:

print $ minDepthGreenNode colorTree == 3

# Task 3

The nodes in the following picture resemple the lower and higher bounds of an interval (the first number will always be lower than the second). Define a function that checks whether such a binary tree is ordered according to the relation subinterval.

Alt text

Alt text

Test cases:

print $ ordered t1 == True
print $ ordered t2 == False

Explanation (for t1):

If we convert the tree in the form length of interval, we get this:

     7
    / \
  3    10
 / \     \
1   5     14

The above tree is a binary search tree, so the output has to be "True".

# Task 4

For an algebraic type representing an n-ary tree, define a predicate that checks whether it is a graceful tree. We say that a tree is a graceful tree if the absolute difference between every child node and its father is an even number.

t1:

   1
/ / \ \
3 5  7 9

t2:

  7
  |
  9
 / \
5   2

Test cases:

print $ isGraceful t1 == True
print $ isGraceful t2 == False
