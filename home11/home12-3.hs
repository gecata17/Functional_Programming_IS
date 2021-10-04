main :: IO()
main = do
    print $ levelSum numberBTree 1 == 11
    print $ levelSum numberBTree 2 == 25
    print $ cone numberBTree -- == True

data BTree = Nil | Node Int BTree BTree

numberBTree :: BTree
numberBTree = Node 10 (Node 5 (Node 1 Nil Nil) (Node 9 Nil Nil)) (Node 6 (Node 8 Nil Nil) (Node 7 Nil Nil))




levelSum :: BTree -> Int -> Int
levelSum Nil _ = 0
levelSum (Node value _  _)  0 = value
levelSum (Node value left right) k = levelSum left (k - 1) + levelSum right (k - 1)

height :: BTree -> Int
height Nil = 0
height (Node _ Nil Nil) = 1
height (Node _ left    right)    = 1 + (max (height left) (height right)) 

cone :: BTree -> Bool
cone tree = check [levelSum tree k | k <- [1..height tree]]
    where
        check []       = True
        check [ _ ]      = True
        check (m:n:ks) = m < n && check (n:ks)
