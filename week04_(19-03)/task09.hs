main :: IO()
main = do
       print $ getPrimesLC 1 100 == [7,17,37,47,67,71,73,79,97]
       print $ getPrimesLC 100 1 == [7,17,37,47,67,71,73,79,97]
       print $ getPrimesHOF 1 100 == [7,17,37,47,67,71,73,79,97]
       print $ getPrimesHOF 100 1 == [7,17,37,47,67,71,73,79,97]

isPrime :: Int->Bool
isPrime n = n > 1 && all(\x->mod n x /= 0) [2 .. n-1]

getPrimesLC :: Int->Int->[Int]
getPrimesLC a b = [x | x <- [min a b .. max a b], isPrime x && any(\char->char=='7') ( show x) ] -- any(==7) (show x)

getPrimesHOF::Int->Int->[Int]
getPrimesHOF a b = filter(\x -> isPrime x && any (\char->char=='7') ( show x)) [min a b .. max a b]
