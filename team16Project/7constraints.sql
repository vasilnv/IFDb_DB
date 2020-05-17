USE restaurants
/*
ALTER TABLE Users
ADD CONSTRAINT pk_users PRIMARY KEY(ID);

ALTER TABLE Foods
ADD CONSTRAINT pk_foods PRIMARY KEY(ID);

ALTER TABLE Comments
ADD CONSTRAINT pk_comments PRIMARY KEY(ID);

ALTER TABLE Restaurants
ADD CONSTRAINT pk_restaurants PRIMARY KEY(ID);

ALTER TABLE Ratings
ADD CONSTRAINT pk_ratings PRIMARY KEY(ID);

*/

ALTER TABLE OrdersFoods
ADD CONSTRAINT pk_orders_foods PRIMARY KEY(orderID, foodId);

ALTER TABLE RestaurantsFoods
ADD CONSTRAINT pk_restaurants_foods PRIMARY KEY(restaurantID, foodID);


ALTER TABLE Users
ADD CONSTRAINT role 
CHECK (role IN ('Admin', 'Moderator', 'Restaurant Page Manager', 'User'))

ALTER TABLE Users
ADD CONSTRAINT password 
CHECK (LEN(password) >= 8)

ALTER TABLE Users
ADD CONSTRAINT email 
CHECK (email LIKE '%@%')


ALTER TABLE Ratings
ADD CONSTRAINT fk_to_users FOREIGN KEY(userID)
REFERENCES Users(ID)
ON DELETE CASCADE

ALTER TABLE Comments
ADD CONSTRAINT fk_from_comments_to_users FOREIGN KEY(userID)
REFERENCES Users(ID)
ON DELETE CASCADE

ALTER TABLE Comments
ADD CONSTRAINT fk_from_comments_to_restaurants FOREIGN KEY(restaurantID)
REFERENCES Restaurants(ID)
ON DELETE CASCADE


ALTER TABLE Ratings
ADD CONSTRAINT fk_from_ratings_to_restaurants FOREIGN KEY(restaurantID)
REFERENCES Restaurants(ID)
ON DELETE CASCADE


ALTER TABLE Orders
ADD CONSTRAINT fk_from_orders_to_users FOREIGN KEY(userID)
REFERENCES Users(ID)
ON DELETE CASCADE


ALTER TABLE Orders
ADD CONSTRAINT fk_from_orders_to_restaurants FOREIGN KEY(restaurantID)
REFERENCES Restaurants(ID)
ON DELETE CASCADE


ALTER TABLE OrdersFoods
ADD CONSTRAINT fk_from_ordersFoods_to_orders FOREIGN KEY(orderID)
REFERENCES Orders(ID)
ON DELETE CASCADE


ALTER TABLE OrdersFoods
ADD CONSTRAINT fk_from_ordersFoods_to_foods FOREIGN KEY(foodID)
REFERENCES Foods(ID)
ON DELETE CASCADE

ALTER TABLE RestaurantsFoods
ADD CONSTRAINT fk_from_restaurantsFoods_to_foods FOREIGN KEY(foodID)
REFERENCES Foods(ID)
ON DELETE CASCADE

ALTER TABLE RestaurantsFoods
ADD CONSTRAINT fk_from_restaurantsFoods_to_restaurants FOREIGN KEY(restaurantID)
REFERENCES Restaurants(ID)
ON DELETE CASCADE

ALTER TABLE Restaurants
ADD CONSTRAINT uq_name_address UNIQUE(name, address)

ALTER TABLE Users
ADD CONSTRAINT uq_username UNIQUE(username);

ALTER TABLE Users
ADD CONSTRAINT uq_email UNIQUE(email);


ALTER TABLE RestaurantsFoods
ADD CONSTRAINT checkPriceRestaurantsFoods
CHECK (price >= 0)

ALTER TABLE Orders
ADD CONSTRAINT checkPriceOrders
CHECK (price >= 0) 

ALTER TABLE OrdersFoods
ADD CONSTRAINT checkCountFood
CHECK (countFood >= 0)
