SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

SELECT name, continent, population FROM world
SELECT name FROM world WHERE population > 200000000

SELECT name FROM world
  WHERE name LIKE 'F%'

SELECT name FROM world
  WHERE name LIKE '%y'

SELECT name FROM world
  WHERE name LIKE 'T%'

SELECT name FROM world
  WHERE name LIKE '%land'

SELECT name FROM world
  WHERE name LIKE 'T%'

SELECT name FROM world
  WHERE name LIKE '%oo%'

SELECT name FROM world
  WHERE name LIKE 'T%'

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
-- 10
SELECT name FROM world
 WHERE name LIKE '____'

-- 12
SELECT name
  FROM world
 WHERE capital LIKE concat('%__City%') 
-- 14
SELECT name, capital
  FROM world
 WHERE capital LIKE CONCAT('%', name, '%') AND capital NOT LIKE name 
 -- sqz prob 3 q 1
 SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1960
-- 2
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
-- 3
SELECT yr, subject
FROM nobel
WHERE winner = "Albert Einstein"
-- 4
SELECT winner, yr
FROM nobel
WHERE yr >= 2000;
-- 6
SELECT * FROM nobel
 WHERE winner 
IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')
-- 10 
SELECT name, round(gdp / population, -3) FROM world WHERE gdp >1000000000000 
-- 12
SELECT name, capital FROM world WHERE  LEFT(capital, 1) = LEFT(name, 1)AND capital != name
-- 1
SELECT name FROM world WHERE (gdp/population) > 38555.0739 AND continent = "Europe"
-- 2
SELECT name, population
FROM world
WHERE population >
    (SELECT population FROM world WHERE name = 'Canada')
AND population <
    (SELECT population FROM world WHERE name = 'Poland')
SELECT name
  FROM world
WHERE gdp >= ALL(SELECT gdp FROM world WHERE gdp >=0 AND continent = 'Europe') AND continent != 'Europe'






