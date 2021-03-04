main :: IO()
main = do
    print $ rev 123 == 321
    print $ rev 1 == 1
    print $ rev 987654321 == 123456789
    --print $ rev (-1) -- error: "n was negative"

rev :: Int -> Int
rev n = if n < 0 then error "n was negative" else helper n 0
 where
     helper :: Int -> Int -> Int
     helper 0 result = result
     helper n result = helper (div n 10) (result * 10 + (mod n 10))
