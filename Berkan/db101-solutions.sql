SELECT *
  FROM developers;
--------------------------------------
SELECT name, surname
  FROM developers;
--------------------------------------
SELECT name || ' ' || surname AS full_name
  FROM developers;
SELECT developers.name, developers.surname, cities.country
  FROM developers JOIN cities ON developers.city_id = cities.id;
--------------------------------------
SELECT country, sum(population)
  FROM cities GROUP BY country;
--------------------------------------
SELECT country, avg(population)
  FROM cities GROUP BY country;
--------------------------------------
SELECT developers.name, developers.surname, count(developer_languages.language_id)
  FROM developers JOIN developer_languages ON developers.id = developer_languages.developer_id
 GROUP BY developers.name, developers.surname
 HAVING count(developer_languages.language_id)>=1;
--------------------------------------
SELECT developers.name, developers.surname, count(developer_languages.language_id)
  FROM developers JOIN developer_languages ON developers.id = developer_languages.developer_id
 GROUP BY developers.name, developers.surname
 HAVING count(developer_languages.language_id)>1;
--------------------------------------
SELECT developers.name, developers.surname, count(developer_languages.language_id)
  FROM developers FULL JOIN developer_languages ON developers.id = developer_languages.developer_id
GROUP BY developers.name, developers.surname
HAVING count(developer_languages.language_id)=0;
--------------------------------------
SELECT developers.name, developers.surname, count(developer_languages.language_id)
  FROM developers FULL JOIN developer_languages ON developers.id = developer_languages.developer_id
GROUP BY developers.name, developers.surname;
--------------------------------------
SELECT languages.name
  FROM languages
 FULL JOIN developer_languages ON developer_languages.language_id = languages.id
 WHERE languages.id NOT IN (SELECT developer_languages.language_id FROM developer_languages)
--------------------------------------
SELECT c1.name, (select avg(population) from cities
 where c1.id != cities.id) FROM cities c1

select c1.name, avg(c2.population) from cities c1
join cities c2 on c1.id != c2.id
group by c1.name--c1.id, c2.id
--------------------------------------
select * from developers

UPDATE developers SET city_id = null where developers.id=9

DELETE from cities where cities.name = 'Paris'

select developers.name, developers.surname, cities.name
  from developers
 full outer join cities on cities.id = developers.city_id
--------------------------------------




select * from developer_languages





