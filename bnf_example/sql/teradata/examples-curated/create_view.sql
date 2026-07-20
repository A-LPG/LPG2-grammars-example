CREATE VIEW emp_v AS
SELECT emp_id, name
FROM employee
WHERE active = 1;
