use restaurants

SELECT restaurants_foods_view.restaurantName, restaurants_foods_view.restaurantAddress 
FROM restaurants_foods_view
WHERE foodName LIKE 'Musaka'

SELECT ratings_view.clientName, ratings_view.foodQualityRating, ratings_view.serviceRating, ratings_view.atmosphereRating
FROM ratings_view
WHERE restaurantName LIKE 'Nacional' AND restaurantAddress LIKE 'Tsarigradsko'

SELECT comments_view.restaurantName, comments_view.restaurantAddress, comments_view.content, comments_view.lastModified
FROM comments_view
WHERE comments_view.clientName LIKE 'vladislav'

SELECT orders_view.clientName, orders_view.clientAddress, orders_view.price
FROM orders_view
WHERE orders_view.restaurantName LIKE 'Nacional' AND orders_view.restaurantAddress LIKE 'Studentski komplex 42'