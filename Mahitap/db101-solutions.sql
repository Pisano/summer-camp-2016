-- List all the developers without any condition:
﻿Select* From developers;

-- List all the developers with only their names and surnames:
Select name, surname From developers;

-- List all the developers with only their names and surnames concatenated in the same column. The column name should be "full_name":
Select Concat(name,surname) as full_name From developers;

-- List all developer names with their countries:
Select d.name,d.surname,c.country From developers d,cities c Where d.city_id=c.id;

-- List the countries with their population. Population of a country is the total population of all cities in that country:
Select country,sum(population) as population From cities Group By country;

-- List the countries with their average population per city:
Select country,avg(population) as avg_population From cities Group By country;

-- List the developers who knows at least one language:
Select * From developers Where id in(select developer_id from developer_languages);

-- List the developers who knows more than one language:
Select * From developers Where id in (Select developer_id From developer_languages Group By developer_id Having COUNT(*) > 1);

-- List the developers who does not know any language:
Select * From developers Where id not in(Select developer_id From developer_languages);

-- List the developers with the number of languages they know:
Select d.name, d.surname, Coalesce(l.count, 0)
From developers d LEFT JOIN (Select developer_id, count(*) count From developer_languages group by developer_id) l on l.developer_id = d.id;

-- List the languages that is known by no developer:
Select * From languages Where id not in(Select language_id from developer_languages);

-- List the cities with average population of other cities other than itself:
Select c1.name,(Select AVG(c2.population) From cities c2 Where c1.id != c2.id) population From cities c1;

-- Delete the cities whose name is 'Paris' from the cities table:
Delete From cities Where name = 'Paris'

-- List the developer names with their cities if there is any. (because we just deleted Paris). If there is not a city for a developer, the developer should still be listed but with an empty city name:
Select d.name, d.surname, c.name From developers d Left Join cities c on c.id = d.city_id;



