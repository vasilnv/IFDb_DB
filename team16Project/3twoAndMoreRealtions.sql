use restaurants
SELECT DISTINCT name, atmosphererating FROM Ratings, Restaurants WHERE atmosphererating = 5 AND Ratings.restaurantID = Restaurants.id
SELECT RestaurantsFoods.price, Orders.price FROM RestaurantsFoods, Orders WHERE Orders.restaurantID = RestaurantsFoods.restaurantID
SELECT Comments.ID AS commentID, username, content FROM Users, Comments where username = 'vasilnv' AND Users.ID = Comments.userID
SELECT Orders.ID, Orders.address, price, name FROM Orders, Restaurants WHERE name = 'Nacional' AND Orders.restaurantID = Restaurants.ID
SELECT Foods.name AS food, price, Restaurants.name AS restaurant FROM Foods, Restaurants, RestaurantsFoods WHERE restaurantid = Restaurants.id and Foods.id = RestaurantsFoods.foodID
