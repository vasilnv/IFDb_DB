use restaurants
INSERT INTO USERS(ID, username, password, email, role) VALUES (1, 'vasilnv', 'alabalaa', 'vasil@gmail.com', 'User')
INSERT INTO USERS(ID, username, password, email, role) VALUES (2, 'jivkomg', 'alabalal', 'jivko@gmail.com', 'User')
INSERT INTO USERS(ID, username, password, email, role) VALUES (3, 'vladislav', 'alablaal', 'vladi@gmail.com', 'User')
INSERT INTO USERS(ID, username, password, email, role) VALUES (4, 'gogo', 'alabalaa', 'gogo@abv.bg', 'Admin')
INSERT INTO USERS(ID, username, password, email, role) VALUES (5, 'jojo', 'alabalaa', 'jojo@gmail.com', 'User')
INSERT INTO USERS(ID, username, password, email, role) VALUES (6, 'pesho', 'alabalala', 'pesho@gmail.com', 'User')

INSERT INTO Restaurants(ID, name, address, description, picture) VALUES (1, 'Nacional', 'Studentski komplex 42', 'top food', NULL)
INSERT INTO Restaurants(ID, name, address) VALUES (2, 'Nacional', 'Tsarigradsko')
INSERT INTO Restaurants(ID, name, address) VALUES (3, 'Talent''s Restaurant', 'Boulevard "Evlogi i Hristo Georgiev"')
INSERT INTO Restaurants(ID, name, address) VALUES (4, 'Shtastlivetsa', 'bul. "Vitosha" 27')
INSERT INTO Restaurants(ID, name, address) VALUES (5, 'Made in Home', 'ul. "Angel Kanchev" 30')
INSERT INTO Restaurants(ID, name, address) VALUES (6, 'Cosmos Restaurant', 'Lavele St 19')
INSERT INTO Restaurants(ID, name, address) VALUES (7, 'Chef''s Restaurant', 'ul. "Lyubata"')

INSERT INTO FOODS(ID, name) VALUES (1, 'Musaka')
INSERT INTO FOODS(ID, name) VALUES (2, 'Tarator')
INSERT INTO FOODS(ID, name) VALUES (3, 'Meat rolls')
INSERT INTO FOODS(ID, name) VALUES (4, 'Spaghetti Bolognese')
INSERT INTO FOODS(ID, name) VALUES (5, 'Soup')
INSERT INTO FOODS(ID, name) VALUES (6, 'Bob')
INSERT INTO FOODS(ID, name) VALUES (7, 'Cesar salad')

INSERT INTO ORDERS(ID, restaurantID, userID, address, price) VALUES (1, 1, 1, 'Studenski komplex ¹8', 10)
INSERT INTO ORDERS(ID, restaurantID, userID, address, price) VALUES (2, 2, 3, 'Studenski komplex ¹8', 12)
INSERT INTO ORDERS(ID, restaurantID, userID, address, price) VALUES (3, 3, 2, 'Studenski komplex ¹50', 8)

INSERT INTO Comments(ID, restaurantID, userID, content, time) VALUES (1, 1, 1, 'fantastic food and staff', '2019-09-27')
INSERT INTO Comments(ID, restaurantID, userID, content, time) VALUES (2, 1, 2, 'fantastic food and staff', '2019-09-12')
INSERT INTO Comments(ID, restaurantID, userID, content, time) VALUES (3, 2, 3, 'fantastic food and staff', '2019-09-01')
INSERT INTO Comments(ID, restaurantID, userID, content, time) VALUES (4, 3, 1, 'fantastic food and staff', '2019-12-05')
INSERT INTO Comments(ID, restaurantID, userID, content, time) VALUES (5, 4, 2, 'fantastic food and staff', '2019-06-15')

INSERT INTO Ratings(ID, restaurantID, userID, serviceRating, atmosphereRating, foodQualityRating) VALUES (1, 1, 1, 5, 5, 5)
INSERT INTO Ratings(ID, restaurantID, userID, serviceRating, atmosphereRating, foodQualityRating) VALUES (2, 1, 1, 5, 5, 5)
INSERT INTO Ratings(ID, restaurantID, userID, serviceRating, atmosphereRating, foodQualityRating) VALUES (3, 2, 3, 3, 5, 5)
INSERT INTO Ratings(ID, restaurantID, userID, serviceRating, atmosphereRating, foodQualityRating) VALUES (4, 3, 3, 3, 2, 5)
INSERT INTO Ratings(ID, restaurantID, userID, serviceRating, atmosphereRating, foodQualityRating) VALUES (5, 4, 4, 4, 5, 5)
INSERT INTO Ratings(ID, restaurantID, userID, serviceRating, atmosphereRating, foodQualityRating) VALUES (6, 1, 2, 1, 1, 5)

INSERT INTO OrdersFoods(orderID, foodID, countFood) VALUES (1, 1, 1)
INSERT INTO OrdersFoods(orderID, foodID, countFood) VALUES (2, 2, 2)
INSERT INTO OrdersFoods(orderID, foodID, countFood) VALUES (3, 1, 1)

INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (3, 1, 10)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (1, 1, 12)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (2, 1, 13)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (4, 1, 20)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (1, 2, 5)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (1, 3, 6)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (2, 4, 7)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (3, 6, 2)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (5, 5, 3)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (4, 4, 4)
INSERT INTO RestaurantsFoods(restaurantID, foodID, price) VALUES (3, 2, 5)

select * from Users
select * from restaurants
select * from foods
select * from orders
select * from comments
select * from Ratings
select * from OrdersFoods
select * from RestaurantsFoods
