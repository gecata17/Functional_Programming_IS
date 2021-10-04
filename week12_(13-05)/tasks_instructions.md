# Task 1

Define a function normalize that formats a string following the rules:

    all lower-case letters become their upper-case eqivalent;
    if there is a number, the program should abort;
    all other symbols are ignored.

Test case:

print $ normalize "Attack London tomorrow at ten a.m." == "ATTACKLONDONTOMORROWATTENAM"

# Task 2

Define a function that takes an alphabet (a sequence of characters), a character (c) from that alphabet and a whole number (n) describing the offset. The function should return the character that results from shifting c n times.

Test cases:

print $ encode ['A'..'Z'] 'A' 1 == 'B'
print $ encode ['A', 'C' ..'F'] 'A' (-2) == 'C'
print $ encode ['A'..'Z'] 'C' 2 == 'E'
print $ encode ['A'..'Z'] 'Z' 3 == 'C'
print $ encode ['A'..'Z'] 'A' (-1) == 'Z'
print $ encode ['A'..'Z'] 'C' (-2) == 'A'
print $ encode ['A'..'Z'] 'Z' (-3) == 'W'
-- print $ encode ['A'..'Z'] '@' 1 == error “unsupported symbol: @”

# Task 3

Define a function that takes an alphabet, an offset and a normalized string and returns the second string where every character is encrypted.

Test case:

print $ encrypt ['A'..'Z'] 5 "ATTACKLONDONTOMORROWATTENAM" == "FYYFHPQTSITSYTRTWWTBFYYJSFR"

# Task 4

Define a function decrypt that reverses the encryption process.

Test case:

print $ decrypt ['A'..'Z'] 5 "FYYFHPQTSITSYTRTWWTBFYYJSFR" == "ATTACKLONDONTOMORROWATTENAM"

# Task 5

Define a function that accepts an alphabet and an input and returns all the possible shifts of the Ceaser cypher.

Test case:

print $ crackall ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" == ["EXXEGOPSRHSRXSQSVVSAEXXIREQ","DWWDFNORQGRQWRPRUURZDWWHQDP","CVVCEMNQPFQPVQOQTTQYCVVGPCO","BUUBDLMPOEPOUPNPSSPXBUUFOBN","ATTACKLONDONTOMORROWATTENAM","ZSSZBJKNMCNMSNLNQQNVZSSDMZL","YRRYAIJMLBMLRMKMPPMUYRRCLYK","XQQXZHILKALKQLJLOOLTXQQBKXJ","WPPWYGHKJZKJPKIKNNKSWPPAJWI","VOOVXFGJIYJIOJHJMMJRVOOZIVH","UNNUWEFIHXIHNIGILLIQUNNYHUG","TMMTVDEHGWHGMHFHKKHPTMMXGTF","SLLSUCDGFVGFLGEGJJGOSLLWFSE","RKKRTBCFEUFEKFDFIIFNRKKVERD","QJJQSABEDTEDJECEHHEMQJJUDQC","PIIPRZADCSDCIDBDGGDLPIITCPB","OHHOQYZCBRCBHCACFFCKOHHSBOA","NGGNPXYBAQBAGBZBEEBJNGGRANZ","MFFMOWXAZPAZFAYADDAIMFFQZMY","LEELNVWZYOZYEZXZCCZHLEEPYLX","KDDKMUVYXNYXDYWYBBYGKDDOXKW","JCCJLTUXWMXWCXVXAAXFJCCNWJV","IBBIKSTWVLWVBWUWZZWEIBBMVIU","HAAHJRSVUKVUAVTVYYVDHAALUHT","GZZGIQRUTJUTZUSUXXUCGZZKTGS","FYYFHPQTSITSYTRTWWTBFYYJSFR"]

# Task 6

Define a function that checks whether a string is a substring of another string.

Test cases:

print $ substring "Haskell" "Haskell Curry" == True
print $ substring "Curry" "Haskell Curry" == True
print $ substring "Curry" "Haskell C5urry" == False
print $ substring "Turing" "Haskell Curry" == False

# Task 7

Define a function that takes an alphabet, a list of common words and an input. The function returns the most plausable decryption (the decryption that has the most words from the dictionary).

Test case:

print $ crackcandidates ['A'..'Z'] ["THE","AND","AT","ON","IS"] "FYYFHPQTSITSYTRTWWTBFYYJSFR" == "ATTACKLONDONTOMORROWATTENAM"

