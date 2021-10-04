main::IO()
main = do 
     print $ enigmaencrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ATTACKLONDONTOMORROWATTENAM" == "ZTUCFOQUULZZGCBEIJHQXRSEOFS"

encrypt :: [Char] -> Int -> String -> String
encrypt alphabet offset string = [ encode alphabet x offset | x <- string]

encode::String -> Char -> Int -> Char
encode xs symbol number = xs !! mod (helper xs 0 + number) (length xs)
 where
    helper::String -> Int -> Int
    helper [] _ = error ("unsupported symbol: " ++[symbol])
    helper (x:xs) index
     | x == symbol = index
     | otherwise = helper xs (index + 1)


polyencrypt :: String -> Int -> Int -> Int -> String -> String
polyencrypt _ _ _ _ "" = ""
polyencrypt alphabet offset step blockSize normalized = encrypt alphabet offset (take blockSize normalized) ++  polyencrypt alphabet (offset + step) step blockSize (drop blockSize normalized)

enigmaencrypt :: String -> [(Int,Int,Int)] -> String -> String
enigmaencrypt _        []                               message    = message
enigmaencrypt alphabet ((offset,step,blockSize):rotors) normalized = enigmaencrypt alphabet rotors (polyencrypt alphabet offset step blockSize normalized)
