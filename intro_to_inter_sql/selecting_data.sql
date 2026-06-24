--SELECT AND FROM KEYWORD

-- The quey below is used to query the database for the 3 colummns from the table film
SELECT title, release_year, rating 
FROM film;

-- ALIASING = This is where we rename column names

SELECT title AS Title
FROM film ;


--CREATE VIEW KEYWORD

-- CREATING A VIEW = This is a saved sql query that acts like a virtual table.It doesnt display anything

CREATE VIEW unique_films AS
SELECT title , release_year
FROM film ;

SELECT title , release_year
FROM unique_films
LIMIT (5)