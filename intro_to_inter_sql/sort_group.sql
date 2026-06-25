-- sorting = This is when you want to order items by either ascending or descending order
-- The items are sorted by ascending order by default

SELECT title , release_year
FROM film
ORDER BY release_year ASC
LIMIT(5);

SELECT title , release_year
FROM film
ORDER BY release_year DESC
LIMIT(5);

-- GROUPBY = This is when you want to classify items based on a certain category

SELECT category_id , COUNT(DISTINCT film_id) AS film_id_count
FROM film_category
GROUP BY category_id
LIMIT (7);

-- We add the having clause to filter. HAVING to filter aggregated groups after they having been grouped
-- WHERE = to filter individual rows before they are grouped

SELECT category_id , COUNT(DISTINCT film_id) AS film_id_count
FROM film_category
GROUP BY category_id
HAVING COUNT(DISTINCT film_id) > 65;

-- add even ORDER BY TO SORT IN EITHER ORDER

SELECT category_id , COUNT(DISTINCT film_id) AS film_id_count
FROM film_category
GROUP BY category_id
HAVING COUNT(DISTINCT film_id) > 65
ORDER BY film_id_count DESC;