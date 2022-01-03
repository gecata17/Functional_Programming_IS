main :: IO()
main = do
    print $ ((specialSum (5-) [1..10]) (> 0)) == 30
    print $ ((specialSum (\ x -> x + 1) [(-5)..5]) odd) -- == 45

specialSum :: (Int -> Int) -> [Int] -> ((Int -> Bool) -> Int)
specialSum f xs = (\p -> sum [x*x | x <- xs, p (f x)])


main :: IO()
main = do
    print $ findUncles t 1 == []
    print $ findUncles t 3 == []
    print $ findUncles t 9 == [2, 3]
    print $ findUncles t 5 == [3, 4]
    print $ findUncles t 7 == [2, 4]
    print $ findUncles t 10 == [5]

t :: [(Int, [Int])]
t = [(1, [2, 3, 4]), (2, [5, 6]), (3, [7]), (4, [8, 9]), (5, []), (6, [10]), (7, []), (8, []), (9, []), (10, [])]

findUncles :: [(Int, [Int])] -> Int -> [Int]
findUncles graph@((start, succ):xs) node
 | start == node = []
 | elem node succ = []
 | otherwise = helper succ
  where
   helper [] = findUncles xs node
   helper (x:xs)
    | elem node (successors graph x) = [ s | s <- succ, s /= x ]
    | otherwise = helper xs

successors :: [(Int, [Int])] -> Int -> [Int]
successors ((parent, succ):xs) start
 | start == parent = succ
 | otherwise = successors xs start



import Data.List
main :: IO()
main = do
 print $ leavesAreEqual t1 t2 == True
 print $ leavesAreEqual t3 t4 == False

data BTree = Nil | Node Int BTree BTree
 deriving (Show)

t1 :: BTree
t1 = Node 10 (Node 1 Nil Nil) (Node 25 Nil (Node 30 (Node 26 Nil Nil) (Node 32 Nil Nil)))

t2 :: BTree
t2 = Node 25 (Node 10 (Node 1 Nil Nil) Nil) (Node 30 (Node 32 Nil Nil) (Node 26 Nil Nil))

t3 :: BTree
t3 = t1

t4 :: BTree
t4 = Node 10 (Node 1 Nil Nil) (Node 25 Nil (Node 30 (Node 27 Nil Nil) (Node 32 Nil Nil)))

getLeaves :: BTree -> [Int]
getLeaves Nil = []
getLeaves (Node val Nil Nil) = [val]
getLeaves (Node val left right) = getLeaves left ++ getLeaves right

leavesAreEqual :: BTree -> BTree -> Bool
leavesAreEqual t1 t2 = (sort $ getLeaves t1) == (sort $ getLeaves t2)


main :: IO()
main = do
    print $ removeEveryKth 3 [1,2,3,4,5,6,7,8,9] == [1,2,4,5,7,8]
    print $ removeEveryKth 4 [1,2,3,4,5,6,7] == [1,2,3,5,6,7]
    print $ removeEveryKth 4 ["Steve", "John", "Bob", "Rob", "Joe"] == ["Steve", "John", "Bob", "Joe"]
    print $ removeEveryKth 4 [2] == [2]
    print $ removeEveryKth 1 [2] == []

removeEveryKth :: Int -> [a] -> [a]
removeEveryKth k xs = [ x | (x, i) <- zip xs [1 ..] , mod i k /= 0]



main :: IO()
main = do
	print $ factorize 2 == [2]
	print $ factorize 13 == [13]
	print $ factorize 152 == [2,2,2,19]
	print $ factorize 123 == [3,41]
	print $ factorize 1000000000000000000 == [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]

isPrime :: Int -> Bool
isPrime n = [x | x <- [1..n], mod n x == 0] == [1, n]


factorize :: Int -> [Int]
factorize x = helper x 2
 where
  helper :: Int -> Int -> [Int]
  helper 1 _ = []
  helper x d
   | mod x d == 0 = if isPrime d then d : helper (div x d) d else helper x (d + 1)
   | otherwise = helper x (d + 1)

{-
factorize :: Int -> [Int]
factorize n = helper 2 n
 where
  helper :: Int -> Int -> [Int]
  helper currentDivisor currNumber
   | isPrime currNumber = [currNumber]
   | mod currNumber currentDivisor == 0 = [currentDivisor] ++ helper currentDivisor (div currNumber currentDivisor)
   | otherwise = helper (currentDivisor + 1) currNumber
-}


main :: IO()
main = do
    print $ (poly []) 15 == 0
    print $ (poly [0]) 1 == 0
    print $ (poly [0,1,2,3]) 1 == 6
    print $ (poly [1,1,1,1,1]) 2 == 31
    print $ (poly [1,0,1,0]) 3 == 10
    print $ (poly [1,2,0,2,1]) 2 == 37
    print $ (poly [0 .. 100]) 1 == 5050
    print $ (poly [0,1,2,3]) 999 == 2993005998
    print $ (poly [-500 .. 0]) 100 == 1804961490326238144

poly :: [Int] -> (Int -> Int)
poly as = (\x -> sum [a*x^i | (a, i) <- zip as [0..]])

{-
poly :: [Int] -> (Int -> Int)
poly xs = (\ x -> sum $ map (\ (a, i) -> a * x ^ i) $ zip xs [0 ..])
-}



main :: IO()
main = do
    print $ height t3
    print $ deepestLeavesSum t3 == 15
    print $ deepestLeavesSum t4 == 4

data BTree = Empty | Node Int BTree BTree

t3 :: BTree
t3 = Node 1 (Node 2 (Node 4 (Node 7 Empty Empty) Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 6 Empty (Node 8 Empty Empty)))

t4 :: BTree
t4 = Node 1 (Node 2 (Node 4 Empty Empty) Empty) (Node 3 Empty Empty)

deepestLeavesSum :: BTree -> Int
deepestLeavesSum t = sum $ getLevel t (height t)

height :: BTree -> Int
height Empty = 0
height (Node value left right) = 1 + max (height left) (height right)

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value _ _) 1 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)