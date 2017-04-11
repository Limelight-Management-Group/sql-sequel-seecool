SELECT title FROM movies;
SELECT director FROM movies;
SELECT director, title FROM movies;
SELECT year, title FROM movies;
SELECT * FROM movies;
SELECT title FROM movies WHERE id = "6";
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE title LIKE "%Toy Story%"
SELECT * FROM movies WHERE director LIKE "%John Lass%"
SELECT * FROM movies WHERE director NOT LIKE "%John Lass%"
SELECT * FROM movies WHERE title LIKE "%WALL%"
SELECT DISTINCT director FROM movies ORDER BY director ASC;
SELECT * FROM movies order by year DESC
LIMIT 4;
SELECT * FROM movies order by title ASC
LIMIT 5;
SELECT * FROM movies order by title ASC
LIMIT 5 OFFSET 5;
SELECT city, population FROM north_american_cities WHERE country = "Canada";
SELECT city FROM north_american_cities WHERE country = "United States" Order by latitude DESC;
SELECT City FROM North_american_cities WHERE longitude < "-87.629798" ORDER BY longitude ASC;
SELECT City, population FROM North_american_cities WHERE Country = "Mexico" ORDER BY population DESC LIMIT 2;
SELECT City, population FROM North_american_cities WHERE Country = "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;
SELECT title, Domestic_sales, International_sales FROM Movies INNER JOIN Boxoffice On Movies.id = Boxoffice.movie_id
SELECT title, Domestic_sales, International_sales FROM Movies INNER JOIN Boxoffice On Movies.id = Boxoffice.movie_id WHERE International_sales > domestic_sales;
SELECT title, Domestic_sales, International_sales FROM Movies INNER JOIN Boxoffice On Movies.id = Boxoffice.movie_id WHERE International_sales > domestic_sales;
SELECT title, Domestic_sales, International_sales FROM Movies INNER JOIN Boxoffice On Movies.id = Boxoffice.movie_id WHERE International_sales > domestic_sales;
SELECT DISTINCT Building_name, Role FROM Buildings Left JOIN Employees On Buildings.Building_name = Employees.Building
SELECT Building_Name FROM Buildings Left JOIN Employees On Buildings.Building_name = Employees.Building WHERE Building IS NULL;
SELECT title, ((international_sales + domestic_sales)/1000000) AS combSales FROM Movies LEFT JOIN Boxoffice ON Movies.id = Boxoffice.movie_id;
SELECT title, rating * 10 AS divRates FROM Movies LEFT JOIN Boxoffice ON Movies.id = Boxoffice.movie_id;










