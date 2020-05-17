SELECT * FROM Comments c JOIN Users u ON c.userid = u.id
SELECT * FROM Users LEFT JOIN Comments ON Users.ID = Comments.userID
SELECT * FROM Comments RIGHT JOIN Restaurants ON Restaurants.ID = Comments.restaurantID 
SELECT username, Restaurants.name, Restaurants.address FROM Ratings JOIN USERS ON Users.ID = Ratings.userID JOIN Restaurants ON Ratings.restaurantID = Restaurants.ID WHERE (serviceRating + atmosphereRating + foodQualityRating) / 3 >= 4
SELECT * FROM Users JOIN Ratings ON Users.ID = Ratings.userID RIGHT JOIN Restaurants ON restaurantID = Restaurants.ID
