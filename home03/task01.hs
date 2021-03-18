main :: IO()
main = do 
    print $ digital_root(9) == 9
    print $ digital_root(16) == 7 -- => 1 + 6 => 7 
    print $ digital_root(78) == 15
    print $ digital_root (463) == 4
    print $ digital_root(942)  == 6 -- => 9 + 4 + 2 => 15 ... => 1 + 5 => 6 
    print $ digital_root(132189) -- == 6-- => 1 + 3 + 2 + 1 + 8 + 9 => 24 ... => 2 + 4 => 6 
    print $ digital_root(493193) -- == 2 --  => 4 + 9 + 3 + 1 + 9 + 3 => 29 ... => 2 + 9 => 11 ... => 1 + 1 => 2

sumDigitsRec :: Int -> Int 
sumDigitsRec n 
 |n < 0 = error "n was not positive"
 |n < 10 = n
 | otherwise = ((mod n 10) + sumDigitsRec(div n 10))

digital_root :: Int->Int 
digital_root n 
 |n < 0 = error "n was negative "
 |n < 10 =  n
 |n < 100 = sumDigitsRec n
 | otherwise = digital_root( mod n 10) + sumDigitsRec (digital_root (div n 10))
