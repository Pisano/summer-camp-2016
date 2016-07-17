### DB101 exercises
- List all the developers without any condition. Example output:

id | name | surname | created_at
------------ | ------------- | ------------ | -------------
3 | Fabien | Loup | 2016-07-17 18:45:38.153223
... | ... | ... | ...


- List all the developers with only their names and surnames. Example output:

name | surname
------------ | -------------
Fabien | Loup
... | ...


- List all the developers with only their names and surnames concatenated in the same column. The column name should be "full_name". Example output:

full_name |
------------ |
Fabien Loup |
... |

- List all developer names with their countries. Example output:

name | surname | country
------------ | ------------- | -------------
Fabien | Loup | Switzerland
... | ... | ...

- List the countries with their population. Population of a country is the total population of all cities in that country. Example output:

country | population
------------ | -------------
Turkey | 26.000.000
... | ...

- List the countries with their average population per city. Example output:

country | avg_population
------------ | -------------
Turkey | 8.666.666
... | ...


- List the developers who knows at least one language.
- List the developers who knows more than one language.
- List the developers who does not know any language.
- List the developers with the number of languages they know.

name | surname | count
------------ | ------------- | -------------
Fabien | Loup | 1
Fehmi | Yemeni | 0
... | ... | ...

- List the languages that is known by no developer.



*The next one is a little tricky :)*
- List the cities with average population of other cities other than itself. Example output:

country | population
------------ | -------------
Istanbul | 4.806.700
... | ...

- Delete the cities whose name is 'Paris' from the cities table.

- List the developer names with their cities if there is any. (because we just deleted Paris). If there is not a city for a developer, the developer should still be listed but with an empty city name.


name | surname | city
------------ | ------------- | -------------
Fabien | Loup | Yverdon
Fehmi | Yemeni |
... | ... | ...

