main :: IO()
main = do 

    print $ height numberBTree == 4
    print $ height charBTree == 3
    print $ average numberBTree -- == 16.22
    --print $ average charBTree -- should not work
    print $ sumLeaves numberBTree == 119
    --print $ sumLeaves charBTree -- shouldn't work
    
    -- print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) == False
    -- print $ areEqual charBTree charBTree == True
    -- print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) == False
    
    print $ setLevels numberBTree  == Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Nil Nil) Nil) (Node (2,0) Nil Nil)) (Node (1,4) (Node (2,2) Nil Nil) (Node (2,5) Nil (Node (3,21) Nil Nil)))
    print $ setLevels charBTree == Node (0,'k') (Node (1,'a') (Node (2,'h') Nil Nil) (Node (2,'s') Nil Nil)) (Node (1,'l') (Node (2,'e') Nil Nil) (Node (2,'l') Nil Nil))

    print $ mirrorTree numberBTree == Node 5 (Node 4 (Node 5 (Node 21 Nil Nil) Nil) (Node 2 Nil Nil)) (Node 12 (Node 0 Nil Nil) (Node 1 Nil (Node 96 Nil Nil)))
    print $ mirrorTree charBTree == Node 'k' (Node 'l' (Node 'l' Nil Nil) (Node 'e' Nil Nil)) (Node 'a' (Node 's' Nil Nil) (Node 'h' Nil Nil))    

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Show, Eq)
 
numberBTree :: (Num a) => BTree a
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))

charBTree :: BTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Nil Nil) (Node 's' Nil Nil)) (Node 'l' (Node 'e' Nil Nil) (Node 'l' Nil Nil))



height :: BTree a -> Int
height Nil  = 0
height (Node _ left right) = 1 + max (height left) (height right)
size :: BTree a -> Int
size Nil = 0
size (Node _ left right) = 1 + size left + size right
inorder :: BTree a -> [a]
inorder Nil = []
inorder (Node value left right) = inorder left ++ [value] ++ inorder right
average ::(Num a,Integral a ) => BTree a -> Double 
average Nil = 0
average tree =  fromIntegral (sum  (inorder tree)) / fromIntegral ((size tree))
sumLeaves :: (Num a ) => BTree a -> a
sumLeaves Nil = 0
sumLeaves (Node value Nil Nil) = value
sumLeaves (Node _ left right) =  sumLeaves left + sumLeaves right
setLevels :: BTree a -> BTree (Int,a)
setLevels tree = helper  0 tree
    where 
        helper  _  Nil= Nil
        helper  lvl (Node value left right) = Node (lvl,value) (helper (lvl + 1) left ) (helper  (lvl + 1) right)

mirrorTree :: BTree a -> BTree a
mirrorTree Nil = Nil
mirrorTree (Node value left right) = Node value (mirrorTree right) (mirrorTree left)