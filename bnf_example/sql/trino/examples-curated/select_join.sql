SELECT a.id, b.name
FROM orders a
JOIN customers b ON a.customer_id = b.id
WHERE a.status = 1
ORDER BY a.id;
