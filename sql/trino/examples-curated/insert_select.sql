INSERT INTO archive
SELECT id, name
FROM events
WHERE event_date < 20240101;
