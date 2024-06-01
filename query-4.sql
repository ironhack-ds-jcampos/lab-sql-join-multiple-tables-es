/* Según esta query: Sports > Games > Foreign > ... */

SELECT DISTINCT c.name, AVG(f.`length`) AS 'Duration average'
FROM category c
INNER JOIN film_category fc ON fc.category_id = c.category_id
INNER JOIN film f ON f.film_id = fc.film_id
GROUP BY c.category_id
ORDER BY 2 DESC;