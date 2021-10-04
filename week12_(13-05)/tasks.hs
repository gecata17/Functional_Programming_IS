main :: IO()
main = do
    print $ t
    print $ size t == 13
    print $ getLevel t 2 == [5, 8, 9, 11, 13, 6, 4]
    -- print $ [[5], [8], [9], [11], [13]]

data NTree a = Nil | Node a [NTree a]
    deriving(Show)

t :: (Num a) => NTree a
t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

size :: NTree a -> Int
size Nil = 0
size (Node v succ) = 1 + sum (map (\ x -> size x) succ)

getLevel :: NTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node v succ) k
 | k == 0 = [v] -- v : []
 | otherwise = concatMap (\ x -> getLevel x (k - 1)) succ


 -------------------------------------
 
    print $ numOfNodes t == 2

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

t :: (Num a)=> NTree a
t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

numOfNodes ::(Num a, Eq a)=> NTree a -> Int
numOfNodes Nil = 0
numOfNodes (Node value successors) =(length $ filter (\x -> x == value) $ map (\ x -> sumOfChildren x) successors) + (sum $ map (\x -> numOfNodes x) successors)

sumOfChildren :: Num a => NTree a -> a
sumOfChildren Nil = 0
sumOfChildren tree = sum $ getLevel tree 1

getLevel :: NTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node v successors) k
 | k == 0 = [v]
 | otherwise = concatMap (\ x -> getLevel x (k - 1)) successors


----------------------------------------
  print $ grandchildrenIncreased t1 == False
    print $ grandchildrenIncreased t2 == True

data BTree = Empty | Node Int BTree BTree
 deriving (Show)

t1 = Node 8 (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty)) (Node 10 (Node 9 Empty Empty) (Node 14 Empty Empty))
t2 = Node 8 (Node 3 (Node 9 Empty Empty) (Node 10 Empty Empty)) (Node 10 (Node 11 Empty Empty) (Node 14 Empty Empty))

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value left right) k
 | k == 0 = [value]
 | otherwise = (getLevel left (k - 1)) ++ getLevel right (k - 1)

grandchildrenIncreased :: BTree -> Bool
grandchildrenIncreased Empty = True
grandchildrenIncreased (Node grandpa left right) = (and $ map (>= grandpa + 1) (getLevel left 1))
                                                    && (and $ map (>= grandpa + 1) (getLevel right 1))
                                                    && grandchildrenIncreased left
                                                    && grandchildrenIncreased right


------------------------------------------------------
print $ isSymmetric Empty == True
 print $ isSymmetric t3 == False
 print $ isSymmetric t4 == True
 print $ isSymmetric t5 == True


t3 :: BTree
t3 = Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty) -- 2 3

t4 :: BTree
t4 = Node 1 (Node 2 (Node 3 Empty Empty) -- / \
        Empty) -- 2 2
        (Node 2 Empty -- / \
        (Node 3 Empty Empty)) -- 3 3

t5 :: BTree 
t5 = Node 1 (Node 2 (Node 3 Empty Empty) -- / \
        (Node 7 (Node 5 Empty Empty) -- 2 2
        Empty)) -- / \ / \
        (Node 2 (Node 7 Empty -- 3 7 7 3
        (Node 5 Empty Empty)) -- / \
        (Node 3 Empty Empty)) -- 5 5

data BTree = Empty | Node Int BTree BTree

isSymmetric:: BTree -> Bool
isSymmetric Empty = True
isSymmetric tree@(Node x btreer btreel) = helper 1
 where
  helper:: Int -> Bool
  helper level
   | getLevel tree level == [] = True
   |otherwise = (reverse $ getLevel tree level) == getLevel tree level && helper (level + 1)

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value left right) k
 | k < 0 = []
 | k == 0 = [value]
 | otherwise = getLevel left (k - 1) ++ getLevel right (k - 1)

 -----------------------------------------------
 print $ flatten (List []) == []
    print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) == [1,2,3,4,5]
    print $ flatten (Elem 1) == [1]

data NestedList = Elem Int | List [NestedList]

flatten :: NestedList -> [Int]
flatten (Elem value) = [value]
flatten (List xs) = concatMap flatten xs
