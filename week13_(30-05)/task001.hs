import Data.List

main :: IO()
main = do
   print $ allContain [t1, t2] == ["acd","cd","d"]
   print $ allContain [t1, t2, t3] == []
   print $ allContain [t3, t4] == ["g"]

allContain :: [BTree] -> [String]
allContain = foldr1 intersect . map genWords

data BTree = Nil | Node Char (BTree) (BTree)

t1 :: BTree
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

t4 :: BTree
t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)

containsWord :: BTree -> String -> Bool
containsWord Nil _ = False
containsWord _ "" = False
containsWord (Node val Nil Nil) [x] = x==val
containsWord (Node val left right) word@(x:xs)
 | val == x = helper left xs || helper right xs
 | otherwise = containsWord left word || containsWord right word
  where
     helper :: BTree -> String ->Bool
     helper (Node value Nil Nil) [x] = x == value
     helper (Node val left right) (x:xs) = val == x && (helper left xs || helper right xs)
     helper _ _ = False

genWords :: BTree -> [String]
genWords Nil = [""]
genWords (Node val Nil Nil )= [[val]]
genWords tree@(Node value left right) = filter (containsWord tree) $ map (value:)(genWords left) ++ map (value:) (genWords right) ++ genWords left ++ genWords right



import Data.List
import Data.Char

main::IO()
main = do
    print $ biggestNumber [1,2,3,4,5] == 54321
    print $ biggestNumber [1,5,5,3,5] == 55531

biggestNumber :: [Int] -> Int
biggestNumber = read . map intToDigit . reverse . sort




main :: IO()
main = do
    print $ intersectionPoints2 (\x -> x) (\x -> x * x) (-5) 5 == [0, 1]
    print $ intersectionPoints2 (\x -> x) (\x -> x * x + 1) (-5) 5 == []

intersectionPoints :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints f g start finish = [x | x <- [start .. finish], f x == g x]

intersectionPoints2:: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints2 f g start finish = filter (\x -> f x == g x) [start .. finish]



main :: IO()
main = do
    print $ iterator [1, 2, 3] (+1) == True
    print $ iterator [1, 2, 4] (+1) == False

iterator :: (Num a, Eq a) => [a] -> (a -> a) -> Bool
iterator [x, y] f = f x == y
iterator (x:y:xs) f = f x == y && iterator (y:xs) f
iterator _ _ = False



main :: IO()
main = do
    print $ levelSum numberBTree 1 == 11
    print $ levelSum numberBTree 2 == 25
    print $ cone numberBTree == True

data BTree = Nil | Node Int BTree BTree

numberBTree :: BTree
numberBTree = Node 10 (Node 5 (Node 1 Nil Nil) (Node 9 Nil Nil)) (Node 6 (Node 8 Nil Nil) (Node 7 Nil Nil))

-- 10
-- / \
-- 5 6
-- / \ / \
-- 1 9 8 7

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node value left right) 0 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

levelSum :: BTree -> Int -> Int
levelSum t k = sum $ getLevel t k

cone :: BTree -> Bool
cone tree = helper 0
 where
  helper :: Int -> Bool
  helper k
   | getLevel tree (k + 1) == [] = True
   | levelSum tree k >= levelSum tree (k + 1) = False
   | otherwise = helper (k + 1)





main :: IO()
main = do
    print $ listOfIndexes 3 [1,2,3,4,3,5,3,2,1] == [2,4,6]
    print $ listOfIndexes 4 [1, 2, 3, 2, 1, 2, 3, 2, 1] == []

listOfIndexes :: Int -> [Int] -> [Int]
listOfIndexes n xs = [ b | (a, b) <- zip xs [0 .. ], a == n ]

listOfIndexes2 :: Int -> [Int] -> [Int]
listOfIndexes2 n xs = map (\ (x, y) -> y) $ filter (\ (x, y) -> n == x) $ zip xs [0 ..]






import Data.Char
import Data.List

main :: IO()
main = do
    print $ digits 4321 == [4, 3, 2, 1]
    print $ digits 16543246 == [1, 6, 5, 4, 3, 2, 4, 6]

    print $ decreasing [4, 3, 2, 1] == True
    print $ decreasing [4, 3, 5, 1] == False
    print $ decreasing [4, 3, 3, 1] == False

    print $ decDigits 4321 == True
    print $ decDigits 4322 == False
    print $ decDigits 7635 == False

digits :: Int -> [Int]
digits = map digitToInt . show

decreasing :: [Int] -> Bool
decreasing [x, y] = x > y
decreasing (x:y:xs) = x > y && decreasing (y:xs)
decreasing _ = True

decDigits :: Int -> Bool
decDigits = decreasing . digits