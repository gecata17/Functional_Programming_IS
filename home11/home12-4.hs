import Data.List
main ::IO()
main = do
     print (leavesAreEqual t1 t2)
     print (leavesAreEqual t1 t3)
data BTree = Nil | Node Int BTree BTree
t1 = (Node 10 (Node 1 Nil Nil) (Node 25 (Node 30 (Node 26 Nil Nil) (Node 32 Nil Nil)) Nil))
t2 = (Node 25 (Node 10 (Node 1 Nil Nil) Nil) (Node 30 (Node 32 Nil Nil) (Node 26 Nil Nil)))

t3 = (Node 10 (Node 1 Nil Nil) (Node 25 (Node 30 (Node 27 Nil Nil) (Node 32 Nil Nil)) Nil))



leavesAreEqual :: BTree -> BTree -> Bool
leavesAreEqual t1 t2 = sort (leaves t1) == sort (leaves t2)
 where
  leaves Nil = []
  leaves (Node value Nil Nil) = [value] 
  leaves (Node _ left right) = leaves left ++ leaves right

