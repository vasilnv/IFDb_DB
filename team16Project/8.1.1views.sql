CREATE VIEW dbo.orders_view AS
SELECT r.name AS restaurantName, r.address AS restaurantAddress, u.username AS clientName, o.address AS clientAddress, o.price AS price
FROM Orders o
INNER JOIN Restaurants AS r ON r.ID = o.restaurantID
INNER JOIN Users AS u ON u.ID = o.userID 



