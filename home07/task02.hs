import Data.List
main :: IO()
main = do 
     print $ listLeaves [(1, 2, 3), (2, 4, 5)] == [3, 4, 5]
     print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
     print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]



tupleToList :: (Eq a) => [(a,a)] -> [a]
tupleToList ((parent,succ):xs) = parent : succ : tupleToList xs
tupleToList _ = []
childrens::(a,a,a)->(a,a)
childrens (_, leaf1, leaf2) = (leaf1, leaf2)
nodeX::(a,a,a)->(a)
nodeX (start, _, _) = (start)
listLeaves :: (Eq a) => [(a, a, a)] -> [a]
listLeaves [] = []
listLeaves nodes = leaves \\ allnodesStart
 where leaves = tupleToList( map childrens nodes)
       allnodesStart = map nodeX nodes
       


