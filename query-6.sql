/* He omitido la unión a la tabla 'films' ya que es innecesaria y ralentiza la query */

SELECT DISTINCT c.name, CONCAT(SUM(p.amount), '$') AS 'Ingresos'
FROM category c
INNER JOIN film_category fc ON fc.category_id = c.category_id
LEFT JOIN inventory i ON i.film_id = fc.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
LEFT JOIN payment p ON p.rental_id = r.rental_id
GROUP BY c.category_id
ORDER BY 2 DESC
LIMIT 5;