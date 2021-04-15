main :: IO()
main = do

    print $ validate 1714==False
    print $ validate 12345 ==False
    print $ validate 891 ==False
    print $ validate 123 ==False
    print $ validate 2121==True
    print $ validate 4736778291034==True
    print $ validate 4485756008412==True
    print $ validate 4485756008422==False
    print $ validate 4214154976719==True   
    



numcheckf :: Integer -> Integer      --   number check if is  natural and the number of digits
numcheckf n
 | n < 10 = n --base case
 |otherwise = div n 10 + mod n 10

outputvalidcheckf :: Integer -> Bool         --  remainder check wheather is valid
outputvalidcheckf n
 | mod n 10 == 0 = True
 | otherwise = False

validate :: Integer -> Bool
validate n = helper n 1 0  -- function with helper function to validate the number of credit card
 where 
     helper :: Integer -> Integer -> Integer ->  Bool
     helper leftOver counter result
      | leftOver == 0 = outputvalidcheckf result --base case
      | mod counter 2 == 0 = helper (div leftOver 10) (counter +1) (result + numcheckf (mod leftOver 10 * 2))
      | otherwise = helper (div leftOver 10) (counter +1) (result + mod leftOver 10)



-- validate second way 

