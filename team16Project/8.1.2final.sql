CREATE VIEW dbo.comments_view AS
SELECT r.name AS restaurantName, r.address AS restaurantAddress, u.username AS clientName, c.content AS content, c.time AS lastModified
FROM Comments c
INNER JOIN Restaurants AS r ON r.ID = c.restaurantID
INNER JOIN Users AS u ON u.ID = c.userID
