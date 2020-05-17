use restaurants
CREATE INDEX idx_username
ON Users(username)

CREATE INDEX idx_restaurant__by_name
ON Restaurants(name, address)

CREATE INDEX idx_ratings_by_restaurants
ON Ratings(restaurantID, userID)

CREATE INDEX idx_ratings_by_users
ON Ratings(userID, restaurantID)

CREATE INDEX idx_comments_by_restaurants
ON Comments(restaurantID, userID)

CREATE INDEX idx_comments_by_users
ON Comments(userID, restaurantID)

CREATE INDEX idx_restaurants_foods
ON RestaurantsFoods(restaurantID)

CREATE INDEX idx_orders_by_restaurants
ON Orders(restaurantID, userID)

CREATE INDEX idx_orders_by_users
ON Orders(userID, restaurantID)

CREATE INDEX idx_orders_foods_by_orders
ON OrdersFoods(orderID)

