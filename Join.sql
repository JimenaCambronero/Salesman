# JOIN
SELECT *
FROM orders as o 
JOIN salesman as s
ON o.salesman_id = s.salesman_id;

SELECT *
FROM orders as o 
LEFT JOIN salesman as s
ON o.salesman_id = s.salesman_id;

SELECT name
FROM orders as o 
LEFT JOIN salesman as s
ON o.salesman_id = s.salesman_id;

SELECT o.*, s.name
FROM orders as o 
LEFT JOIN salesman as s
ON o.salesman_id = s.salesman_id;

SELECT *
FROM orders as o 
RIGHT JOIN salesman as s
ON o.salesman_id = s.salesman_id;