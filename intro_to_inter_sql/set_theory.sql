-- SET THEORY (UNION , UNION ALLL , INTERSECT , EXCEPT)

--UNION = This takes input from both tables and returns all records from both tables excluding duplicates.
--Since its involves stacking , the fields you select to stack must be of the same datatype

SELECT film_id FROM film
UNION
SELECT film_id FROM film_category
ORDER BY film_id
LIMIT(10); -- It returns the film_id in both tables in ascending order'

--UNION ALL = Returns records from both tables including duplicates. So if table 1 had 100 rows and table 2 has 100 rows it will return 200 rows

SELECT film_id FROM film
UNION ALL
SELECT film_id FROM film_category
ORDER BY film_id
LIMIT(10); 

-- INTERSECT = Returns only the records that exist in both tables. When using intersect the left table and right table should have the same number of columns.


SELECT film_id FROM film
INTERSECT
SELECT film_id FROM film_category
ORDER BY film_id
LIMIT(10); 

-- EXCEPT = Returns rows that exist in the left table and absent in the right table

SELECT film_id FROM film
EXCEPT
SELECT film_id FROM film_category
ORDER BY film_id
LIMIT(10); 