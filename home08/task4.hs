import Data.Char
import Data.Maybe
import Data.List

t :: Tree
t = [(1,[2,3,4]),(2,[5,6]),(3,[7]),(4,[8,9]),(5,[]),(6,[10]),(7,[]),(8,[]),(9,[]),(10,[])]
main ::IO()
main = do 



    print $ findUncles t 5 == [3,4]
    print $ findUncles t 7 == [2,4]
    print $ findUncles t 10 == [5]

type Tree = [(Int, [Int])]

findUncles :: [(Int, [Int])] -> Int -> [Int]
findUncles tree node = if null parent then [] else brothers (head parent)
    where 
        parent = [v | (v, vs) <- tree, elem node vs] 
        brothers v = concat [delete v vs | (_, vs) <- tree, elem v vs]
