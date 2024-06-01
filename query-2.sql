SELECT c.store_id, CONCAT(SUM(p.amount),'$') AS 'Negocio'
FROM store s
INNER JOIN customer c ON c.store_id = s.store_id
INNER JOIN payment p ON p.customer_id = c.customer_id
GROUP BY c.store_id;