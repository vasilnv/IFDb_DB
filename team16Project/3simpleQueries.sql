use restaurants
SELECT * FROM Orders WHERE price > 10 
SELECT username as Name, email from Users
SELECT name FROM Foods WHERE name NOT LIKE 'M%'
SELECT * FROM Users WHERE email LIKE '%gmail.com'
SELECT * FROM Ratings WHERE servicerating > 3 AND atmosphererating > 3 ORDER BY servicerating ASC


