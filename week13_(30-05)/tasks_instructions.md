# Task 1

Define a function that returns all words contained in all of the trees passed as a list.

Implementation detail:

!! Solve the task using folding !!

Test cases:

print $ allContain [t1, t2] == ["acd","cd","d"]
print $ allContain [t1, t2, t3] == []
print $ allContain [t3, t4] == ["g"]

Trees:

t1:    a
      / \
     c   b
    / \   \
   f   d   e

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

t4 :: BTree Char
t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)

# Task 2 ..

Open and solve "Tasks1.pdf" and in "Tasks2.pdf".
