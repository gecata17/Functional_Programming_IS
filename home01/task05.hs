main :: IO()
main = do
    print $ isLeapYearOneLine 2020 == True
    print $ isLeapYearOneLine 1988 == True
    print $ isLeapYearOneLine 1600 == True
    print $ isLeapYearOneLine 2400 == True
    print $ isLeapYearOneLine 2023 == False
    print $ isLeapYearOneLine 1700 == False
    print $ isLeapYearOneLine 1800 == False
    print $ isLeapYearOneLine 2100 == False

    print $ isLeapYearGuards 2020 == True
    print $ isLeapYearGuards 1988 == True
    print $ isLeapYearGuards 1600 == True
    print $ isLeapYearGuards 2400 == True
    print $ isLeapYearGuards 2023 == False
    print $ isLeapYearGuards 1700 == False
    print $ isLeapYearGuards 1800 == False
    print $ isLeapYearGuards 2100 == False

isLeapYearOneLine :: Int -> Bool 
isLeapYearOneLine n = if mod n 400 == 0 then True else if mod n 4 == 0 && mod n 100 /= 0 then True else False 

isLeapYearGuards :: Int -> Bool 
isLeapYearGuards y
 |mod y 400 == 0 = True
 |mod y 100 == 0 = True 
 |mod y 4 == 0 = True 
 |otherwise = False  
  
