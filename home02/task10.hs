main :: IO()
main = do
     print $ everyOther 9==0
     print $ everyOther 12  ==1
     print $ everyOther 852369  == 628
     print $ everyOther 1714  == 11
     print $ everyOther 12345  == 42
     print $ everyOther 891  == 9
     print $ everyOther 123  ==2
     print $ everyOther 2121 == 22
     print $ everyOther 4736778 == 767
     print $ everyOther 448575 == 784
     print $ everyOther 4214  == 14 


everyOther :: Int -> Int 
everyOther n = helper n 0
  where
       helper leftOver result 
        |leftOver<10=result
        |leftOver<100=(div leftOver 10) + result* 10
        |otherwise = helper (div (div leftOver 10) 10)  ((result*10 ) +  (mod (div leftOver 10) 10))

