main :: IO()
main = do
    print $ growingPlant2 5 2 5 == 1
    print $ growingPlant2 5 2 6 == 2
    print $ growingPlant2 10 9 4 == 1
    print $ growingPlant2 100 10 910 == 10

growingPlant :: Int -> Int -> Int -> Int
growingPlant up down goal = helper up
 where
     helper :: Int -> Int
     helper afterDayI
      | afterDayI >= goal = 1
      | otherwise = 1 + helper (afterDayI - down + up)

-- second way
-- growingPlant :: Int -> Int -> Int -> Int
-- growingPlant up down target = 1 + max 0 (div (target - down - 1) (up - down))

-- third way
-- growingPlant :: Int -> Int -> Int -> Int
-- growingPlant u d h 
--  | u >= h = 1 
--  | otherwise = div h (u + (-d))
