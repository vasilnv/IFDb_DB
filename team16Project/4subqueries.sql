use restaurants
SELECT * FROM Comments WHERE userid = (SELECT id FROM Users WHERE username='jivkomg');
SELECT foodID, restaurantID, price FROM RestaurantsFoods WHERE restaurantid IN (SELECT id FROM Restaurants WHERE name LIKE 'N%');
SELECT name FROM Foods WHERE EXISTS (SELECT * FROM RestaurantsFoods WHERE price < 5 AND Foods.id = foodID);
SELECT foodID, price FROM RestaurantsFoods WHERE price <= ALL (SELECT price FROM RestaurantsFoods);
SELECT DISTINCT Users.username, c.content FROM Users, ( SELECT Comments.userID, Comments.content FROM Comments WHERE restaurantID = 1 ) c  WHERE c.userID = Users.ID
