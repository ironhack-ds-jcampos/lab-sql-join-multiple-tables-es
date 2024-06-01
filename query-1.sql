SELECT s.store_id, c.city, c2.country
FROM store s
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON c.city_id = a.city_id
INNER JOIN country c2 ON c2.country_id = c.country_id;