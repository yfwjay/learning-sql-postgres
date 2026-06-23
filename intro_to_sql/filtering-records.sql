-- SELECTING UNIQUE VALUES 
-- DISTINCT ITEMS

SELECT DISTINCT title , release_year
FROM film ;

-- COUNT KEYWORD = to count how many values are in a certain column

SELECT COUNT(actor_id) AS actor_id_count
FROM actor ;

-- ACROSS 2 COLUMNS(We count for the number of items in the first_name and last_name)

SELECT COUNT(first_name) AS first_name_count , COUNT(last_name) AS last_name_count
FROM actor;

-- Combine distinct and count

SELECT COUNT(DISTINCT first_name) AS first_name_distinct , COUNT(DISTINCT last_name) AS last_name_distinct
FROM actor;

--Count all items in the table

SELECT COUNT(*)
FROM actor;

-- WHERE KEYWORD . Useed in combination with comparison operators > , < <> , =

SELECT title , release_year
FROM film
WHERE release_year = 2006 ; 

--You just interchange the comparison operations as needed based on what yiu want to achieve


--MULTIPLE CRITERIA USING AND , OR AND BETWEEN
-- AND = Both conditions to be true
-- OR = Only one condition should be true
-- Between = Within a certain range

SELECT title , release_year
FROM film
WHERE (release_year = 2006) AND (release_year = 2005);


SELECT title , release_year
FROM film
WHERE (release_year = 2006) OR (release_year = 2005);

SELECT title , release_year
FROM film
WHERE release_year BETWEEN 2000 AND 2001 ;

SELECT *
FROM staff
WHERE (first_name = 'Mike' AND store_id = 1) OR (first_name = 'Jon' AND store_id = 2);