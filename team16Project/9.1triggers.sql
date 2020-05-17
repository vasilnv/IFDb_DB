CREATE TRIGGER orders_calculate_price
ON OrdersFoods
AFTER INSERT, DELETE, UPDATE
AS 
	UPDATE o
	SET o.price = o.price + (
		SELECT COALESCE(SUM(rf.price * i.countFood), 0) 
		FROM RestaurantsFoods AS rf
		JOIN inserted AS i ON rf.foodID = i.foodID
		WHERE o.restaurantID = rf.restaurantID AND o.ID = i.orderID
	) - (
		SELECT COALESCE(SUM(rf.price * d.countFood), 0) 
		FROM RestaurantsFoods AS rf
		JOIN deleted AS d ON rf.foodID = d.foodID
		WHERE o.restaurantID = rf.restaurantID AND o.ID = d.orderID
	)
	FROM Orders AS o
	WHERE o.ID IN (SELECT orderID FROM inserted UNION SELECT orderID FROM deleted)
