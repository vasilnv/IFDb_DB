CREATE VIEW dbo.ratings_view AS
SELECT r.name AS restaurantName, r.address AS restaurantAddress, u.username AS clientName, serviceRating, atmosphereRating, foodQualityRating
FROM Ratings AS rat
INNER JOIN Restaurants AS r ON r.ID = rat.restaurantID
INNER JOIN Users AS u ON u.ID = rat.userID

