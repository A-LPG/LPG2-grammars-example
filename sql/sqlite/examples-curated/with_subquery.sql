WITH c AS (SELECT id FROM users WHERE id > 0)
SELECT c.id, u.name
FROM c JOIN users u ON c.id = u.id
WHERE u.name = 'alice';
