main :: IO()
main = do 

    print $ (pairCompose (\x->x+1 ) (\x->x+2) (\x->x+3) 1) ==8


pairCompose :: (Ord b,Num b) => (a->b)->(a->b)->(a,b) ->a->Int
pairCompose f g  t xs = all id (zipWith (>=)  (map  f xs) (map g xs) (map t xs) )
 
