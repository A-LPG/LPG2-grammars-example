SELECT id, name FROM users WHERE id = 1;
INSERT INTO users (id, name) VALUES (1, 'alice');
CREATE TABLE t (id INT PRIMARY KEY, name VARCHAR);
DROP TABLE t;
UPDATE users SET name = 'bob' WHERE id = 1;
DELETE FROM users WHERE id = 1;
