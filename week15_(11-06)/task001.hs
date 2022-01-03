main :: IO()
main = do
    print $ bestStudents [("Иван Иванов", 6.0),("Петър Петров", 5.5),("Мария Маринова",6.0),("Марина Петрова",5.0)] == ["Иван Иванов", "Мария Маринова"]

bestStudents :: [(String, Double)] -> [String]
bestStudents xs = [name | (name, grade) <- xs, maxGrade == grade]
 where
    maxGrade :: Double
    maxGrade = maximum [grade | (name, grade) <- xs]


main :: IO()
main = do
    print $ (listToFunction [1,2,3]) 3 == 13
    print $ (listToFunction [1,2,3]) 1 == 11
    print $ (listToFunction [1,2,3]) 8 == 0

listToFunction:: [Int] -> (Int -> Int)
listToFunction lst = (\ x -> if elem x lst then x + 10 else 0)



main :: IO()
main = do
    print $ singleCousin tree == [8, 9, 11, 12]

data BTree = Nil | Node Int (BTree) (BTree)

tree :: BTree
tree = Node 1 (Node 2 (Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) (Node 5 Nil (Node 10 Nil Nil))) (Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil)))

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

singleCousin :: BTree -> [Int]
singleCousin (Node value left right)
 | (length $ children left) == 1 && (length $ children right) == 1 = children left ++ children right
 | (length $ children right) == 1 = children left
 | (length $ children left) == 1 = children right
 | otherwise = singleCousin left ++ singleCousin right
  where
   children :: BTree -> [Int]
   children t = getLevel t 1

{-
singleCousin Node 1 (Node 2 (Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) (Node 5 Nil (Node 10 Nil Nil))) (Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil)))
singleCousin Node value=2 left=(Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) right=(Node 5 Nil (Node 10 Nil Nil)) ++ singleCousin Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil))
[8, 9] ++ singleCousin Node value=3 left=(Node 6 Nil (Node 11 Nil Nil)) right=(Node 7 Nil (Node 12 Nil Nil))
[8, 9] ++ children Node 6 Nil (Node 11 Nil Nil) ++ children Node 7 Nil (Node 12 Nil Nil)
[8, 9] ++ [11] ++ [12]
[8, 9, 11, 12]
-}




import Data.List

main :: IO()
main = do
    print $ isBinarySearchTree t1 == True
    print $ isBinarySearchTree t2 == False
    print $ isBinarySearchTree t3 == False
    print $ isBinarySearchTree t4 == False

-----------------------------------------------------------------------------------------------------------

data BTree = Nil | Node Int BTree BTree
 deriving (Show)

t1 :: BTree
t1 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 6 (Node 4 Nil Nil) (Node 7 Nil Nil))) (Node 10 Nil (Node 14 (Node 13 Nil Nil) Nil))

t2 :: BTree
t2 = Node 8 (Node 3 (Node 5 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 14 Nil Nil))

t3 :: BTree
t3 = Node 8 (Node 3 (Node 2 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 1 Nil Nil))

t4 :: BTree
t4 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 4 Nil Nil)) (Node 10 (Node 5 Nil Nil) Nil)

-----------------------------------------------------------------------------------------------------------

traverseDFS :: BTree -> [Int]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

isBinarySearchTree :: BTree -> Bool
isBinarySearchTree t = traversedDfs == (sort $ traversedDfs)
 where
     traversedDfs = traverseDFS t



import Data.List

main :: IO()
main = do
    print $ mapTree t1 (\ (x, y) -> y - x)
    print $ ordered t1 == True
    print $ ordered t2 == False

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show)

t1 :: (Num a) => BTree (a, a)
t1 = Node (3, 10) (Node (5, 8) (Node (6, 7) Nil Nil) (Node (4, 9) Nil Nil)) (Node (2, 12) Nil (Node (1, 15) Nil Nil))

t2 = Node (3, 10) (Node (5, 8) (Node (6, 7) Nil Nil) (Node (7, 9) Nil Nil)) (Node (2, 12) Nil (Node (1, 5) Nil Nil))

ordered :: (Num a, Ord a) => BTree (a, a) -> Bool
ordered t = isBinarySearchTree $ mapTree t (\ (x, y) -> y - x)

mapTree :: (Num b) => BTree a -> (a -> b) -> BTree b
mapTree Nil _ = Nil
mapTree (Node value left right) f = Node (f value) (mapTree left f) (mapTree right f)

traverseDFS :: (Eq a) => BTree a -> [a]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

isBinarySearchTree :: (Ord a) => BTree a -> Bool
isBinarySearchTree t = traversedDfs == (sort $ traversedDfs)
 where
     traversedDfs = traverseDFS t



main :: IO()
main = do
    print $ deepestLeavesSum t3 == 15
    print $ deepestLeavesSum t4 == 4

data BTree = Nil | Node Int BTree BTree

t3 :: BTree
t3 = Node 1 (Node 2 (Node 4 (Node 7 Nil Nil) Nil) (Node 5 Nil Nil)) (Node 3 Nil (Node 6 Nil (Node 8 Nil Nil)))

t4 :: BTree
t4 = Node 1 (Node 2 (Node 4 Nil Nil) Nil) (Node 3 Nil Nil)

deepestLeavesSum :: BTree -> Int
deepestLeavesSum t = sum $ getLevel t (height t - 1)

height :: BTree -> Int
height Nil = 0
height (Node _ left right) = 1 + max (height left) (height right)

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)



main :: IO()
main = do
    print $ init [1, 2, 3, 4, 5]
    print $ tail [1, 2, 3, 4, 5]
    print $ rotate 5 ['a','b','c','d','e','f','g','h'] == "fghabcde"
    print $ rotate 8 ['a','b','c','d','e','f','g','h'] == "abcdefgh"
    print $ rotate 11 ['a','b','c','d','e','f','g','h'] == "defghabc"
    print $ rotate (-2) ['a','b','c','d','e','f','g','h'] == "ghabcdef"
    print $ rotate2 5 ['a','b','c','d','e','f','g','h'] == "fghabcde"
    print $ rotate2 8 ['a','b','c','d','e','f','g','h'] == "abcdefgh"
    print $ rotate2 11 ['a','b','c','d','e','f','g','h'] == "defghabc"
    print $ rotate2 (-2) ['a','b','c','d','e','f','g','h'] == "ghabcdef"

rotate :: Int -> [Char] -> String
rotate 0 xs = xs
rotate n xs
 | n > 0 = rotate (n - 1) (tail xs ++ [head xs])
 | otherwise = rotate (n + 1) ([last xs] ++ init xs)

rotate2 :: Int -> [Char] -> String
rotate2 0 xs = xs
rotate2 n xs
 | n > 0 = rotate (n - 1) (tail xs ++ [head xs])
 | otherwise = rotate (length xs + n) xs
