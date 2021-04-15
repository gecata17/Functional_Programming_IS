main :: IO()
main = do
    print (scoreHand ["A"])                          -- 11
    print (scoreHand ["A","J"])                      -- 21
    print (scoreHand ["5","3","7"])                  -- 15
    print (scoreHand ["5","4","3","2","A","K"])      -- 25
    print (scoreHand ["2","3"])                      -- 5
    print (scoreHand ["4","5","6"])                  -- 15
    print (scoreHand ["7","7","8"])                  -- 22
    print (scoreHand ["K","J","Q"])                  -- 30
    print (scoreHand ["A","3"])                      -- 14
    print (scoreHand ["A","A"])                      -- 12
    print (scoreHand ["A", "10", "A"])               -- 12
    print (scoreHand ["A","2","A","9","9"])          -- 22          





scoreCard :: String -> Int
scoreCard "J"   = 10
scoreCard "Q"   = 10
scoreCard "K"   = 10
scoreCard "A"   = 1
scoreCard "10"  = 10
scoreCard (c:_) = ord c - ord '0'  

scoreHand :: [String] -> Int
scoreHand hs = if score < 12 && elem "A" hs then score + 10 else score
    where score = sum . map scoreCard $ hs
