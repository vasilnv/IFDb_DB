use restaurants

SELECT COUNT(rf.restaurantID) AS restaurantsCount, f.name AS foodName
FROM RestaurantsFoods AS rf
JOIN Foods AS f ON f.ID = rf.foodID
GROUP BY f.name
ORDER BY restaurantsCount DESC

SELECT COUNT(rf.restaurantID) AS restaurantsCount, f.name AS foodName
FROM RestaurantsFoods AS rf
JOIN Foods AS f ON f.ID = rf.foodID
GROUP BY f.name
ORDER BY f.name

SELECT COUNT(ID) AS usersCount
FROM Users

SELECT COUNT(ID) AS restaurantsCount
FROM Restaurants

SELECT COUNT(o.ID) AS ordersCount, r.name AS restaurantName, r.address AS restaurantAddress
FROM Orders AS o
JOIN Restaurants AS r ON r.ID = o.restaurantID
GROUP BY r.name, r.address
ORDER BY restaurantName, restaurantAddress

SELECT COUNT(rf.foodID) AS foodsCount, r.name AS restaurantName, r.address AS restaurantAddress
FROM RestaurantsFoods AS rf
JOIN Restaurants AS r ON rf.restaurantID = r.ID
GROUP BY r.name, r.address
ORDER BY restaurantName, restaurantAddress

SELECT AVG((serviceRating + atmosphereRating + foodQualityRating) / 3) AS averageOverallRating, r.name AS restaurantName, r.address AS restaurantAddress
FROM Ratings AS rat
JOIN Restaurants AS r ON restaurantID = r.ID
GROUP BY r.name, r.address
ORDER BY averageOverallRating DESC

SELECT MAX(averageRating) AS maxAverageOverallRatingFROM (SELECT AVG((serviceRating + atmosphereRating + foodQualityRating) / 3) AS averageRating, restaurantID FROM Ratings GROUP BY restaurantID) AS avrgINNER JOIN Restaurants AS r ON avrg.restaurantID = r.ID

SELECT AVG(serviceRating) AS averageServiceRating, r.name AS restaurantName, r.address AS restaurantAddress
FROM Ratings AS rat
JOIN Restaurants AS r ON restaurantID = r.ID
GROUP BY r.name, r.address
ORDER BY averageServiceRating DESC

SELECT AVG(atmosphereRating) AS averageAtmosphereRating, r.name AS restaurantName, r.address AS restaurantAddress
FROM Ratings AS rat
JOIN Restaurants AS r ON restaurantID = r.ID
GROUP BY r.name, r.address
ORDER BY averageAtmosphereRating DESC

SELECT AVG(foodQualityRating) AS averageFoodQualityRating, r.name AS restaurantName, r.address AS restaurantAddress
FROM Ratings AS rat
JOIN Restaurants AS r ON restaurantID = r.ID
GROUP BY r.name, r.address
ORDER BY averageFoodQualityRating DESC

