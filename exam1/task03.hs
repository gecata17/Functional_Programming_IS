main :: IO()
main = do
    print (persistence 39)  -- (3,[27,14,4])      -- 3*9=27, 2*7=14, 1*4=4
    print (persistence 999) -- (4,[729,126,12,2]) -- 9*9*9=729, 7*2*9=126,  
    print (persistence 126) -- (2,[12, 2])        -- 1*2*6=12, 1*2=2
    print (persistence 4)   -- (1,[4])


digitsProduct :: Int -> Int
digitsProduct n = helper n 1
    where
        helper n res =
            if n < 10
            then res * n
            else helper (div n 10) (res * (mod n 10))

persistence :: Int -> (Int, [Int])
persistence n = (length ns, ns)
    where
        ns = helper n
        helper n = if dN < 10 then [dN] else dN:helper dN
            where dN = digitsProduct 
