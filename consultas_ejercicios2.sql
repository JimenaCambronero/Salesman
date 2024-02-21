-- FUNCION SUM
SELECT SUM(purch_amt) AS Ventas
FROM orders;

SELECT SUM(purch_amt) AS Ventas, customer_id
FROM orders
GROUP BY customer_id;

SELECT SUM(purch_amt) AS Ventas, salesman_id, customer_id 
FROM orders
GROUP BY salesman_id, customer_id;

SELECT ord_date, SUM(purch_amt) AS Ventas
FROM orders
GROUP BY ord_date;

SELECT ord_date, SUM(purch_amt) AS Ventas
FROM orders
GROUP BY ord_date;

SELECT MONTH(ord_date) AS Mes, SUM(purch_amt) AS Ventas
FROM orders
GROUP BY mes
ORDER BY mes;

SELECT YEAR(ord_date) AS Anio, SUM(purch_amt) AS Ventas
FROM orders
GROUP BY Anio
ORDER BY Anio;

SELECT COUNT(ord_no) AS pedidos 
FROM orders;

SELECT cust_name,
COUNT(ord_no) AS Pedidos
FROM salesman.orders o
LEFT JOIN salesman.customer c ON c.customer_id = o.customer_id
GROUP BY cust_name;

SELECT cust_name,name,
COUNT(ord_no) AS Pedidos
FROM salesman.orders o
LEFT JOIN salesman.customer c ON c.customer_id = o.customer_id
LEFT JOIN salesman.salesman s ON s.salesman_id = o.salesman_id
GROUP BY cust_name,name;

SELECT COUNT(DISTINCT customer_id) as CantidadClientes
FROM orders;

