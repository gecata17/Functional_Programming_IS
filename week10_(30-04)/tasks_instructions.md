# Task 1

For the following tree complete the actions below:

Alt text

    print it;
    define a function that:
        returns its size;
        returns the elements at level k.

Implementation detail:

Define the tree by using a polymorphic algebraic type!

Test cases:

print $ t print $ size t == 13 print $ getLevel t 2 == [5, 8, 9, 11, 13, 6, 4]


# Task 2

tree_task3

t:

t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

Test case:

print $ numOfNodes t == 2

# Task 3

tree_task3

t1:

 8

/
3 10 / \ /
1 4 9 14

t2:

 8

/
3 10 / \ /
9 10 11 14

Test cases:

print $ grandchildrenIncreased t1 == False print $ grandchildrenIncreased t2 == True

Trees used:

t1 = Node 8 (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty)) (Node 10 (Node 9 Empty Empty) (Node 14 Empty Empty)) t2 = Node 8 (Node 3 (Node 9 Empty Empty) (Node 10 Empty Empty)) (Node 10 (Node 11 Empty Empty) (Node 14 Empty Empty))

# Task 4

tree_task3

Test cases:

print $ isSymmetric Empty == True print $ isSymmetric t3 == False print $ isSymmetric t4 == True print $ isSymmetric t5 == True

Trees used:

t3 :: BTree -- 1 t3 = Node 1 (Node 2 Empty Empty) -- /
(Node 3 Empty Empty) -- 2 3

t4 :: BTree -- 1 t4 = Node 1 (Node 2 (Node 3 Empty Empty) -- /
Empty) -- 2 2 (Node 2 Empty -- /
(Node 3 Empty Empty)) -- 3 3

t5 :: BTree -- 1 t5 = Node 1 (Node 2 (Node 3 Empty Empty) -- /
(Node 7 (Node 5 Empty Empty) -- 2 2 Empty)) -- / \ /
(Node 2 (Node 7 Empty -- 3 7 7 3 (Node 5 Empty Empty)) -- /
(Node 3 Empty Empty)) -- 5 5

# Task 5

tree_task3

Test cases:

print $ flatten (List []) == [] print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) == [1,2,3,4,5] print $ flatten (Elem 1) == [1]
