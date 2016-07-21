-- List all the developers without any condition. Example output:
select *
from developers;




--------- List all the developers with only their names and surnames. Example output:
select name, surname
from developers;






-?????? List all the developers with only their names and surnames concatenated in the same column. The column name should be "full_name". Example output:
select name || ' ' || surname as full_name
from developers;







-- List all developer names with their countries. Example output:
select developers.name, developers.surname, cities.country
from developers
join cities on cities.id = developers.city_id;







-- List the countries with their population. Population of a country is the total population of all cities in that country. Example output:
select country, SUM(population)
from cities
group by country;






-- List the countries with their average population per city. Example output:
select country, AVG(population)
from cities
group by country;






------------------------------------------------------------------
-- List the developers who knows at least one language.
select *
from developers
where id in(
        select developer_id
        from developer_languages
);






-- List the developers who knows more than one language.
WITH more_than_one as
(select developer_id
FROM developer_languages
group by developer_id
having COUNT(*) > 1
)
select *
from developers
join more_than_one on more_than_one.developer_id = developers.id;


select *
from developers
where id in (
        select developer_id
        FROM developer_languages
        group by developer_id
        having COUNT(*) > 1
);







-- List the developers who does not know any language.
select *
from developers
where id not in(
        select developer_id
        from developer_languages
);







-- List the developers with the number of languages they know.
select developers.name, developers.surname, coalesce(lang_counts.count, 0)
from developers
LEFT JOIN (
        select developer_id, count(*) as count
        FROM developer_languages
        group by developer_id
) lang_counts on lang_counts.developer_id = developers.id;






-- List the languages that is known by no developer.
select *
from languages
where id not in(
        select language_id
        from developer_languages
);






-- *The next one is a little tricky :)*
-- List the cities with average population of other cities other than itself. Example output:
select first_table.id, first_table.name, AVG(second_table.population)
from cities first_table
join cities second_table on first_table.id != second_table.id
group by first_table.id, first_table.name;






-- Delete the cities whose name is 'Paris' from the cities table.
delete from cities where name = 'Paris'




-- List the developer names with their cities if there is any. (because we just deleted Paris). If there is not a city for a developer, the developer should still be listed but with an empty city name.
select developers.name, developers.surname, cities.name
from developers
LEFT join cities on cities.id = developers.city_id;

