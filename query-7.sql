/* Sí, está disponible */

SELECT *
FROM film f
INNER JOIN inventory i ON i.film_id = f.film_id
INNER JOIN store s ON s.store_id = i.store_id
WHERE f.title = 'Academy Dinosaur' AND s.store_id = 1;