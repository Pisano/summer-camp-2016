-- List all the developers without any condition.
SELECT *
FROM developers;


-- List all the developers with only their names and surnames.
SELECT name,
       surname
FROM developers;


-- List all the developers with only their names and surnames concatenated in
-- the same column. The column name should be "full_name".
SELECT name || ' ' || surname AS full_name
FROM developers;


-- SELECT developers.name,
--        developers.surname,
--        cities.country
-- FROM developers,
--      cities
-- WHERE developers.city_id = cities.id;


-- List all developer names with their countries.
SELECT developers.name,
       developers.surname,
       cities.country
FROM developers
JOIN cities ON developers.city_id = cities.id;


-- List the countries with their population. Population of a country is the
-- total population of all cities in that country.
SELECT country,
       SUM(population) AS population
FROM cities
GROUP BY country;


--- List the countries with their average population per city.
SELECT country,
       AVG(population) AS avg_population
FROM cities
GROUP BY country;


-- List the developers who knows at least one language.
SELECT developers.name,
       developers.surname
FROM developers
WHERE EXISTS
    (SELECT *
     FROM developer_languages
     WHERE developer_id = developers.id);


-- List the developers who knows more than one language.
SELECT developers.name,
       developers.surname
FROM developers
WHERE
    (SELECT COUNT(*)
     FROM developer_languages
     WHERE developer_id = developers.id) > 1;


-- List the developers who does not know any language.
SELECT developers.name,
       developers.surname
FROM developers
WHERE NOT EXISTS
    (SELECT *
     FROM developer_languages
     WHERE developer_id = developers.id);


-- List the developers with the number of languages they know.
SELECT developers.name,
       developers.surname,
       COALESCE(dev_and_lang_count.count,0)
FROM developers
LEFT JOIN
  (SELECT developer_id,
          COUNT(*) AS COUNT
   FROM developer_languages
   GROUP BY developer_id) dev_and_lang_count ON dev_and_lang_count.developer_id = developers.id;


-- List the languages that is known by no developer.
SELECT languages.name
FROM languages
LEFT JOIN developer_languages ON languages.id = developer_languages.language_id
WHERE developer_languages.language_id IS NULL;


-- List the cities with average population of other cities other than itself.
SELECT a.name,
  (SELECT AVG(b.population)
   FROM cities AS b
   WHERE a.id != b.id) AS population
FROM cities AS a;


-- Delete the cities whose name is 'Paris' from the cities table.
DELETE
FROM cities
WHERE name = 'Paris';


-- List the developer names with their cities if there is any.
-- (because we just deleted Paris). If there is not a city for a developer,
-- the developer should still be listed but with an empty city name.
SELECT developers.name,
       developers.surname,
       cities.name
FROM developers
LEFT JOIN cities ON cities.id = developers.city_id;


--SELECT developers.name, developers.surname, COALESCE(mahmut.count,0)
-- FROM developers
-- LEFT JOIN
-- (
--   SELECT developer_id, count(*) as count
--   FROM developer_languages
--   GROUP BY developer_id
-- ) mahmut ON mahmut.developer_id = developers.id
