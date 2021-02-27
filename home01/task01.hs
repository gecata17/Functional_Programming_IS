main :: IO()
main = do
    print $ isEvenIf 2 == True
    print $ isEvenIf 15452 == True
    print $ isEvenIf 321 == False
    print $ isEvenGuards 2 == True
    print $ isEvenGuards 15452 == True
    print $ isEvenGuards 321 == False

isEvenIf :: Int -> Bool
isEvenIf n = if mod n 2 == 0 then True else  False

isEvenGuards :: Int -> Bool 
isEvenGuards n
 |mod n 2 == 0 = True 
 |otherwise = False
