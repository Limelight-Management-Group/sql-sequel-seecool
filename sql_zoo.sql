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
-- 2
SELECT name FROM world WHERE (gdp/population) > 38555.0739 AND continent = "Europe"
-- 4

SELECT name, population
FROM world
WHERE population >
    (SELECT population FROM world WHERE name = 'Canada')
AND population <
    (SELECT population FROM world WHERE name = 'Poland')
-- 6
SELECT name
  FROM world
WHERE gdp >= ALL(SELECT gdp FROM world WHERE gdp >=0 AND continent = 'Europe') AND continent != 'Europe'
-- 8
SELECT continent, name
FROM world a
WHERE name <= ALL(SELECT name FROM world b WHERE b.continent = a.continent)
-- 10
SELECT name, continent
FROM world a
WHERE population > ALL(SELECT population*3 FROM world b WHERE a.continent = b.continent AND population > 0 AND b.name != a.name)
 -- SUM 2
 SELECT DISTINCT continent FROM world
 -- 4
 SELECT count(name)
FROM world
WHERE area >= 1000000
-- 6
SELECT continent, COUNT(name) FROM world GROUP BY continent
-- 8
 SELECT DISTINCT continent
FROM world a
WHERE 100000000  <= (SELECT SUM(population) FROM world b WHERE a.continent = b.continent AND population >  0 )
SELECT id,stadium,team1,team2 FROM game WHERE id = '1012'
SELECT team1,team2, player FROM game JOIN goal ON (id=matchid) WHERE player LIKE 'Mario%'
SELECT mdate, teamname FROM game JOIN eteam ON (team1=eteam.id) WHERE coach = 'Fernando Santos'
SELECT DISTINCT stadium, COUNT(gtime) FROM game JOIN goal ON matchid = id GROUP BY stadium

SELECT DISTINCT matchid, mdate, COUNT(teamid) AS count FROM game JOIN goal ON matchid = id WHERE teamid = 'GER' Group by matchid,mdate, teamid
-- MOre Join 1
SELECT id, title
 FROM movie
 WHERE yr=1962
 -- 2
 SELECT yr
 FROM movie
 WHERE title = 'Citizen Kane'
 -- 4
 SELECT id
FROM actor
WHERE name = "Glenn Close"
-- 5
SELECT id
FROM movie
WHERE title = 'Casablanca'
-- 6
SELECT ti.name
FROM actor AS ti
Join casting AS cl
ON ti.id = actorid
Join movie AS t
ON t.id=movieid
WHERE movieid=11768
-- 8
SELECT t.title
FROM actor AS ti
Join casting AS cl
ON ti.id = actorid
Join movie AS t
ON t.id=movieid
WHERE actorid = '2216'
-- 10






