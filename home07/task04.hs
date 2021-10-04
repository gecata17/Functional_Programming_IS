main ::IO()
main = do 
     print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30]  == [78.53981633974483,11.25,113.30000000000001,9.127927385194024,6283.185307179587]
     print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == (Cylinder 20.0 30.0)

data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a
 deriving (Show,Eq)

area ::(Num a,Floating a) => Shape a ->a
area (Circle r ) = (pi*r*r)
area (Rectangle a b) = (a*b)
area (Triangle a b c) = (sqrt(((a+b+c)/2)*(((a+b+c)/2)-a) *(((a+b+c)/2)-b) *(((a+b+c)/2)-c)))
area (Cylinder r h) = ((2*pi*r*h )+ (2*pi*r*r))

getAreas::(Num a,Floating a) =>[Shape a]->[a]
getAreas xs =  map(\x->area x) xs

maxArea::(Num a ,Ord a,Floating a) =>[Shape a]->Shape a
maxArea xs = foldr1 (\s1 s2 -> if area s1 > area s2 then s1 else s2) xs

