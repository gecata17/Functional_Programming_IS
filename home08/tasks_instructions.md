# Task 1

Define a new polymorphic algrebraic data type called "Point". A point may have two or three dimensions. Create an instance for every dimension and print it.
By using the "Point" data type, complete tasks 2 and 3.

# Task 2

Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Implemenation detail:

Round the result until the second digit after the decimal point.

Test cases:

print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03

# Task 3

Define a function that accepts a point p and returns the closest point (to p) from a list of points.

Implemenation detail:

Solve the task using folding!

Test case:

print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == ThreeD 4.0 5.0 6.0

# Task 4

A product has a name, quantity (in grams/milliliters) and a price (in lv). A shop has products, thus we can use it as a database.

Available products in the shop:

- Bread: 1kg for 1.20;
- Milk: 2L for 4.50;
- Lamb: 5kg for 10.00;
- Cheese: 750g for 5.00;
- Butter: 1kg for 5.50;
- Water: 500ml for 0.50;
- Soap: 250g for 4.50.

Your tasks are:

- Create and print the database;
- Define a function that:
    - returns the price of the inventory;
    - simulates the result of buying a product. The function takes the name and quantity of the desired product. It then checks the database for that product. If the quantity desired is equal to the one available the product is removed from the shop. Otherwise, its amount is reduced.

Test cases:

print $ db
print $ getTotal == 70825.0
print $ "Buying 500 bread:"
print $ buy "bread" 500 db
print $ "Buying 500 water:"
print $ buy "water" 500 (buy "bread" 500 db)
print $ "Buying 100 soap:"
print $ buy "soap" 100 (buy "water" 500 (buy "bread" 500 db))
print $ "Buying 500 bread:"
print $ buy "bread" 500 (buy "soap" 100 (buy "water" 500 (buy "bread" 500 db)))
--print $ buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.
--print $ buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.
