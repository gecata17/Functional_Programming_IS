main :: IO()
main = do
     print $ hasElementsPM [] == False
     print $ hasElementsPM [1, 2, 3] == True
     print $ hasElementsFunc [] == False
     print $ hasElementsFunc [1, 2, 3] == True

hasElementsPM :: [Int]->Bool 
hasElementsPM [] = False
hasElementsPM xs = True  -- _ = True (wildcard),doesnt allocate memory


hasElementsFunc :: [Int] -> Bool 
hasElementsFunc xs  = not $ null xs  -- xs = lentgh xs/=0
