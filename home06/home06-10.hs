main ::IO()
main = do
     print $ checkNumber 2728 == (4,15)
     print $ checkNumber 31415 == (12,2)
     print $ checkNumber 121 == (2,2) 



sumDigitsRec1 :: Int -> Int  
sumDigitsRec1 n 
 |n < 0 = error "n was not positive"
 |n < 10 = n
 | otherwise = (even (mod n 10)) +sumDigitsRec1 (div n 10)

sumDigitsRec2 :: Int -> Int  
sumDigitsRec2 n 
 |n < 0 = error "n was not positive"
 |n < 10 = n
 | otherwise = (odd (mod n 10)) +sumDigitsRec2 (div n 10)
 


indexedString  str= zip [1 ..] str


type Vector = (Int,Int)
checkNumber :: Int -> (Vector)
checkNumber n =  map $ even $ indexedString n 



-- findWordIndices' :: String -> String -> [Int]
-- findWordIndices' w = snd . foldl doStuff (0, []) . words
--   where
--     doStuff (cur, results) word =
--         if word == w 
--         then (cur + length word + 1, cur : results) 
--         else (cur + length word + 1, results)  
