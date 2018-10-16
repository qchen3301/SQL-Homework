#1 
SELECT name, population FROM country 
    WHERE region = 'Southern Europe'
    ORDER BY population ASC;

#2 
SELECT language FROM countrylanguage
    JOIN country on country.code = countrylanguage.code 
    WHERE country.name = 'Holy See (Vatican City State)';

#3
SELECT name from country 
    JOIN countrylanguage on country.code = countrylanguage.code
    WHERE countrylanguage.language = 'Italian'
    AND countrylanguage.isofficial IS true;

#4
SELECT country.name FROM country   
    JOIN city on country.code = city.countrycode
    JOIN countrylanguage on country.code = countrylanguage.countrycode
    WHERE country.name = city.name
    AND countrylanguage.language = 'Italian' 
    AND countrylanguage.isofficial IS true
    GROUP BY country.name

