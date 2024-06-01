/* Uso left joins para mostrar 0 cuando no haya alquileres */

SELECT DISTINCT f.title, COUNT(r.rental_id)
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY f.film_id
ORDER BY 2 DESC;