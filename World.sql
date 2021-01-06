SELECT countries.name, languages.language, languages.percentage  FROM countries
JOIN languages ON countries.id=languages.country_id
WHERE language = "Slovene" ORDER BY percentage DESC;

SELECT countries.name, COUNT(cities.id) AS Cities FROM countries 
JOIN cities ON countries.id = cities.country_id 
GROUP BY countries.id ORDER BY count(cities.id) DESC;

SELECT cities.name as Mexico, cities.population AS Population FROM cities 
WHERE (cities.country_id=136) AND (cities.population > 500000) ORDER BY population DESC;

SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89 ORDER BY percentage DESC;

SELECT countries.name, countries.surface_area, countries.population FROM countries
WHERE(surface_area < 501) AND (population > 100000);

SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy FROM countries
WHERE (government_form = "Constitutional Monarchy") AND (capital > 200) AND (life_expectancy > 75);

SELECT countries.name, cities.name, cities.district, cities.population FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE(cities.district = "Buenos Aires") AND (cities.population > 500000);

SELECT countries.region, count(countries.id) AS countries FROM countries
GROUP BY countries.region ORDER BY count(countries.id) DESC;
