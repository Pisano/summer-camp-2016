-- List all the developers without any condition.
SELECT *
FROM developers;

-- List all the developers with only their names and surnames.
SELECT name,
       surname
FROM developers;

-- List all the developers with only their names and surnames concatenated
-- in the same column. The column name should be "full_name".
SELECT name || ' ' || surname AS full_name
FROM developers;

-- List all developer names with their countries.
SELECT developers.name,
       developers.surname,
       cities.country
FROM developers
JOIN cities ON cities.id = developers.city_id;

-- List the countries with their population. Population of a country is the
-- total population of all cities in that country.
SELECT country,
       SUM(population)
FROM cities
GROUP BY country;

-- List the countries with their average population per city.
SELECT country,
       AVG(population)
FROM cities
GROUP BY country;

-- List the developers who knows at least one language.
SELECT *
FROM developers
WHERE id IN
    ( SELECT developer_id
     FROM developer_languages);

-- List the developers who knows more than one language.
WITH more_than_one AS
  (SELECT developer_id
   FROM developer_languages
   GROUP BY developer_id
   HAVING COUNT(*) > 1)
SELECT *
FROM developers
JOIN more_than_one ON more_than_one.developer_id = developers.id;


SELECT *
FROM developers
WHERE id IN
    ( SELECT developer_id
     FROM developer_languages
     GROUP BY developer_id
     HAVING COUNT(*) > 1);

-- List the developers who does not know any language.
SELECT *
FROM developers
WHERE id NOT IN
    ( SELECT developer_id
     FROM developer_languages);

-- List the developers with the number of languages they know.
SELECT developers.name,
       developers.surname,
       coalesce(lang_counts.count, 0)
FROM developers
LEFT JOIN
  ( SELECT developer_id,
           count(*) AS COUNT
   FROM developer_languages
   GROUP BY developer_id) lang_counts ON lang_counts.developer_id = developers.id;

-- List the languages that is known by no developer.
SELECT *
FROM languages
WHERE id NOT IN
    ( SELECT language_id
     FROM developer_languages);

-- List the cities with average population of other cities other than itself.
SELECT first_table.id,
       first_table.name,
       AVG(second_table.population)
FROM cities first_table
JOIN cities second_table ON first_table.id != second_table.id
GROUP BY first_table.id,
         first_table.name;

-- Delete the cities whose name is 'Paris' from the cities table.
DELETE
FROM cities
WHERE name = 'Paris'

-- List the developer names with their cities if there is any.
-- (because we just deleted Paris). If there is not a city for a developer,
-- the developer should still be listed but with an empty city name.
SELECT developers.name,
       developers.surname,
       cities.name
FROM developers
LEFT JOIN cities ON cities.id = developers.city_id;
