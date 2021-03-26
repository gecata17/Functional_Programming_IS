main :: IO()
main = do
       print $ isPresentRecNonPM 0 [] == False
       print $ isPresentRecNonPM 0 [1, 2, 3] == False
       print $ isPresentRecNonPM 0 [0, -1, 2] == True
       print $ isPresentRecPM 0 [] == False
       print $ isPresentRecPM 0 [1, 2, 3] == False
       print $ isPresentRecPM 0 [0, -1, 2] == True
       print $ isPresentFunc 0 [] == False
       print $ isPresentFunc 0 [1, 2, 3] == False
       print $ isPresentFunc 0 [0, -1, 2] == True


isPresentRecNonPM :: Int ->[Int]->Bool
isPresentRecNonPM d xs 
 |d == 0 && xs == []=False 
 |otherwise = d == (head xs)


isPresentRecPM :: Int ->[Int]->Bool
isPresentRecPM 0 [] = False
isPresentRecPM d xs = d == (head xs)
 

isPresentFunc :: Int ->[Int]->Bool
isPresentFunc 0 [] = False
isPresentFunc d xs = elem d xs 

