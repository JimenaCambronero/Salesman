-- promedio ventas
SELECT AVG(purch_amt) as promedio_ventas
FROM salesman.orders;

-- promedio ventas filtrado por fecha
SELECT AVG(purch_amt) as promedio_ventas
FROM salesman.orders
WHERE ord_date >'2012-07-01';

-- promedio ventas por comprador
SELECT customer_id,
AVG(purch_amt) as promedio_ventas
FROM orders
GROUP BY customer_id;

-- promedio ventas por cliente
SELECT customer_id,
AVG(purch_amt) as promedio_ventas
FROM orders
WHERE customer_id = 3002
GROUP BY customer_id;

-- promedio por comercial
SELECT salesman_id, 
AVG(purch_amt) as promedio_ventas
FROM orders
GROUP BY salesman_id;

-- Redondear promedio funcion ROUND
SELECT salesman_id, 
ROUND(AVG(purch_amt),2) as promedio_ventas
FROM orders
GROUP BY salesman_id;

SELECT name, 
ROUND(AVG(purch_amt),2) as promedio_ventas
FROM orders o
LEFT JOIN salesman s 
ON s.salesman_id = o.salesman_id
GROUP BY name;

SELECT name, 
ROUND(AVG(purch_amt),2) as promedio_ventas
FROM orders o
LEFT JOIN salesman s 
ON s.salesman_id = o.salesman_id
WHERE name = 'Nail Knite'
GROUP BY name;

-- Funciones Max y Min
SELECT MIN(purch_amt) as minimo_ventas
FROM orders;

SELECT MAX(purch_amt) as minimo_ventas
FROM orders;

SELECT customer_id,
MAX(purch_amt) as maximo_venta
FROM orders
GROUP BY customer_id
ORDER BY 2 DESC;

SELECT customer_id,
MIN(purch_amt) as minimo_ventas
FROM orders
GROUP BY customer_id
ORDER BY 2 DESC;

SELECT cust_name as nombre,
MAX(purch_amt) as maximo_ventas
FROM orders o
LEFT JOIN customer c
On c.customer_id = o.customer_id
GROUP BY cust_name
ORDER BY 2 DESC;

-- fecha min y max
SELECT MAX(ord_date) as fecha_maxima
FROM orders;

SELECT MIN(ord_date) as fecha_minima
FROM orders;

SELECT MIN(ord_date) as fecha_minima,
MAX(ord_date) as fecha_maxima
FROM orders;

SELECT MIN(ord_no) as pedido_minimo,
MAX(ord_no) as pedido_maximo
FROM orders;

SELECT MIN(customer_id) as id_cust_min,
MAX(customer_id) as id_cust_max
FROM orders;

SELECT MIN(salesman_id) as id_sales_min,
MAX(salesman_id) as id_sales_max
FROM orders;

