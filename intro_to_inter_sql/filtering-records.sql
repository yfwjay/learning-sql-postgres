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


-- LIKE AND NOT LIKE KEY-WORDS

-- LIKE = Finds the rows that match the condition you specified
-- NOT LIKE = Returns the rows that doesnt match the condition that you specified

-- The 2 filtering conditions use wildcards (% and _) THEY PRODUCE DIFFERENT RESULTS BASED ON WHERE THEY HAVE BEEN USED

--% represents = zero , one or multiple characters 
-- EG: %son = Finds any value that ends with 'son'
--     son% = Finds any value that starts with son
--     %son% = Contains.Finds words that have son anywhere in the middle , beginning or at the end

-- _ represents = exactly one single character
--EG: _ight = Finds words EXACTLY 5 letters long and end with ight
--   m_p = Finds 3 letter words and that start with m and end with p


-- THE 2 WILDCARDS COMBINED

-- _B% = Find the rows where the second word is b and ends in any other characters
-- %son_ = Find 5 letter words that start with son


--USING LIKE WILDCARD
SELECT country
FROM country
WHERE country LIKE 'A%';

--USING _ WILDCARD
SELECT country
FROM country
WHERE country LIKE 'Ang___' --country starting with ang and is 5 letter word

--USING BOTH WILDCARDS

SELECT country 
FROM counry
WHERE country LIKE '_n%' --country where the second letter is n and has any other characters


--IN KEYWORD = TO find rows that are within a apecified condition

SELECT title
FROM film
WHERE language_id IN (1)
LIMIT (5);  -- RETURN TITLES OF FILMS WITH A LANGUANGE ID OF 1


--IS NULL KEYWORD 

SELECT title
FROM film
WHERE language_id IS NULL ; --returns rows where language_id is null

-- IS NOT NULL KEYWORD

SELECT title
FROM film
WHERE language_id IS NOT NULL
LIMIT (5); 