main ::IO ()
main = do
      print $ dominates (\x -> x + 1) (\x -> x + 2) [] == False
      print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] == False
      print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] == True

dominates :: (Double->Double)->(Double ->Double)->[Double]->Bool
dominates _ _ [] = False
dominates f g xs =  foldl1 (&&) $ map  (\x->(abs $ f x )>= (abs $ g x)) xs


-- second way

-- dominates :: (Double->Double)->(Double ->Double)->[Double]->Bool 
-- dominates f g xs = all (\x->(abs $ f x )>= (abs $ g x)) xs