main :: IO()
main = do 
      print $ (repeater "I love Haskell") 3 " " == "I love Haskell I love Haskell I love Haskell"
      print $ (repeater "Quack") 5 "!" == "Quack!Quack!Quack!Quack!Quack"


repeater :: String->(Int->String->String)
repeater chr = (\counter glue -> if counter == 1 then chr else chr++ glue ++ ((repeater chr) (counter-1) glue) )
