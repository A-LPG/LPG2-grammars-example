CREATE VIEW sales_v AS
SELECT region, amount AS total
FROM sales
WHERE region IS NOT NULL;
