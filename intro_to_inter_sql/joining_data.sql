--LEFT JOIN = returns rows all the rows on the left table and those records that match the joining gield provided
-- To speciffy which field to join with we specify either using ON(if they had different field names) OR USING(if they had the same field name)
--We will use the film table and film_category

SELECT f1.film_id , title , release_year , category_id
FROM film AS f1
LEFT JOIN film_category as f2
USING(film_id)
LIMIT(5);

--RIGHT JOIN = Returns all records on the right table all these records on the left table that match

SELECT f2.film_id , category_id , title , release_year
FROM film_category as f2
RIGHT JOIN film AS f1
USING(film_id)
LIMIT(7);

--FULL JOIN = Combines left and right joins where we have missing values they are filled with null

SELECT f1.film_id , title , release_year , category_id
FROM film AS f1
FULL JOIN film_category as f2
USING(film_id)
LIMIT(5); -- The results will be similar to above as the table has no missing film_id.If there was a missing film_id there will be null values on that id


--CROSS JOIN = All possible combinations from both tables. Don't specify the ON or USING Keyword

SELECT f1.film_id , title , release_year , category_id
FROM film AS f1
CROSS JOIN film_category as f2
LIMIT(5);

-- INNER JOIN = Returns rows that match from both tables

SELECT f1.film_id , title , release_year , category_id
FROM film AS f1
INNER JOIN film_category as f2
USING(film_id)
LIMIT(5);

--SELF JOIN = We can't be able to perform a self join on the tables we have as there is no logical meaning to generate but syntax is the same