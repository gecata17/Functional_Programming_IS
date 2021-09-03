import Data.Char
main :: IO()
main = do  
      print $ reduceStr "dabAcCaCBAcCcaDD" == "dabCBAcaDD" -- dabAcCaCBAcCcaDD -> dabAaCBAcCcaDD -> dabCBAcCcaDD -> dabCBAcaDD



reduceStr :: String->String 
reduceStr xs = helper xs []
 where
       areDuplicate x y = toLower  x == toLower y && (isUpper x && isLower y || isLower x && isUpper y)
       helper :: String->String->String
       helper [] result = result
       helper [x] result = result ++ [x]
       helper (x:y:xs) result
        |areDuplicate x y = reduceStr (result ++ xs)
        |otherwise  = helper (y:xs) (result ++ [x])

