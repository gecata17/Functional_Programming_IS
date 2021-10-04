main ::IO()
main = do 
    print $ maxDepthBlueNode colorTree == 3


data Color = Red | Green | Blue
 deriving(Read,Show,Eq)
data Tree a = Nil | Node a (Tree a) (Tree a)
 deriving(Show )
colorTree::Tree Color
colorTree = Node Blue (Node Red (Node Green Nil Nil) Nil) (Node Red (Node Blue (Node Green  Nil Nil) (Node Red Nil Nil)) Nil)

maxDepthBlueNode :: Tree Color -> Int
maxDepthBlueNode tree  = helper tree 1
   where
       helper Nil _ = 0
       helper (Node Blue left right) currentDepth = maximum[currentDepth,helper left (currentDepth+1),helper right (currentDepth+1)]
       helper (Node _ left right) currentDepth = max(helper left(currentDepth+1)) (helper right(currentDepth+1))
       

