import Data.Char
import Data.List
main :: IO()
main = do 
      print $ duplicateCount ""  -- == 0  -- no characters repeats more than once
      print $ duplicateCount "abcde" -- == 0
      print $ duplicateCount "aabbcde" -- == 2 -- 'a' and 'b'
      print $ duplicateCount "aabBcde" -- == 2 -- 'a' occurs twice and 'b' twice (`b` and `B`)
      print $ duplicateCount "indivisibility" -- == 1 -- 'i' occurs six times
      print $ duplicateCount "Indivisibility" -- == 1
      print $ duplicateCount "aA11" -- == 2 -- 'a' and '1'
      print $ duplicateCount "ABBA" -- == 2 -- 'A' and 'B' each occur twice
      print $ duplicateCount "Indivisibilities"-- == 2 -- 'i' occurs seven times and 's' occurs twice
      print $ duplicateCount ['a'..'z'] -- == 0
      print $ duplicateCount (['a'..'z'] ++ ['A'..'Z'])  -- == 26

countOccurrences str = map (\x -> (head x, length x)) $ group $ sort $ map toLower  str

duplicateCount :: String->Int 
duplicateCount str = length $ filter(\x-> x == head str) str
-- duplicateCount xs = sum $ map(\x->( length x)) $ group $ sort xs
