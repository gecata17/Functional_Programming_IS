# For home
# Task 1

Define a function that takes an alphabet, an offset, a step, a blockSize and a normalized message. The function returns the string made from taking the first blockSize letters, encrypting them with the offset and then encryting the next blockSize letters with (offset + step) offset.

Test case:

print $ polyencrypt ['A'..'Z'] 5 1 7 "ATTACKLONDONTOMORROWATTENAM" == "FYYFHPQUTJUTZUTVYYVDHBBMVIU"

# Task 2

Define a function that decrypts the message from task 8.

Test case:

print $ polydecrypt ['A'..'Z'] 5 1 7 "FYYFHPQUTJUTZUTVYYVDHBBMVIU" == "ATTACKLONDONTOMORROWATTENAM"

# Task 3

One of the main components of The Enigma Machine is a system of rotors. A rotor can be represented with the functions already defined in last week's tasks 4 and 5. The message, then, is passed from rotor to rotor until we reach the final one, the result from which is the final encrypted message. Your task is to write a function that accepts an alphabet, a list of rotors and a message and returns its encrypted equivalent.

Test case:

print $ enigmaencrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ATTACKLONDONTOMORROWATTENAM" == "ZTUCFOQUULZZGCBEIJHQXRSEOFS"

# Task 4

Define a function that decrypts a message produced from task 10.

Test case:

print $ enigmadecrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ZTUCFOQUULZZGCBEIJHQXRSEOFS" == "ATTACKLONDONTOMORROWATTENAM"
