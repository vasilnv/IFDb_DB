CREATE VIEW dbo.restaurants_foods_view AS
SELECT r.name AS restaurantName, r.address AS restaurantAddress, f.name AS foodName
FROM RestaurantsFoods AS rf
INNER JOIN Restaurants AS r ON r.ID = rf.restaurantID
INNER JOIN Foods AS f ON f.ID = rf.foodID