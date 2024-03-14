#funcion CASE
SELECT * 
FROM orders;

SELECT *, 
CASE
	when purch_amt >=0 AND purch_amt <=1000 THEN 'Broze'
    when purch_amt between 1001 AND 2000 THEN 'Platinium'
    when purch_amt between 2001 AND 10000 THEN 'Gold'
    else 'sin ranking'
END as ranking_ventas
FROM orders;

SELECT *,
CASE 
	when ord_date >='2012-08-01' AND ord_date <'2012-08-02' THEN 'Periodo 1'
    when ord_date >='2012-08-02' AND ord_date <'2012-09-01' THEN 'Periodo 2'
    when ord_date >'2012-09-01' AND ord_date <'2012-11-11' THEN 'Periodo 3'
    else 'Sin Periodo'
END as ranking_periodo
FROM orders;

SELECT 
CASE 
	when ord_date >='2012-08-01' AND ord_date <'2012-08-02' THEN 'Periodo 1'
    when ord_date >='2012-08-02' AND ord_date <'2012-09-01' THEN 'Periodo 2'
    when ord_date >'2012-09-01' AND ord_date <'2012-11-11' THEN 'Periodo 3'
    else 'Sin Periodo'
END as ranking_periodo,	
    SUM(purch_amt) as ventas
FROM orders
GROUP BY ranking_periodo;

#funcion CONCAT
SELECT *,
CONCAT(salesman_id,' - ', name,' - ',city) as concatenado
FROM salesman;

SELECT *,
CONCAT(cust_name,' -- ',grade)as concatenado
FROM customer;

#funcion REPLACE
SELECT *,
REPLACE(grade, 100, 80) as campo_reemplazado
FROM customer;

SELECT *,
REPLACE (cust_name,' ', ' - ') campo_reemplazado
FROM customer;

# funcion LEFT y RIGHT
SELECT *,
LEFT(cust_name, 3) as extraer_iniciales
FROM customer;

SELECT *,
RIGHT(cust_name, 3) as extraer_finales
FROM customer;

# funcion NOW
SELECT *, 
DATEDIFF(NOW(), ord_date) as dias_desde_venta
FROM orders;

SELECT *, 
DATEDIFF('2012-12-31', ord_date) as dias_desde_venta
FROM orders;

# funcion MONTH YEAR
SELECT *, 
MONTH(ord_date) as num_mes
FROM orders;

SELECT  
MONTH(ord_date) as num_mes,
FORMAT(SUM(purch_amt),2) as ventas
FROM orders
GROUP BY num_mes;

SELECT *,
YEAR(ord_date) as anio
FROM orders;

SELECT 
YEAR(ord_date) as anio,
SUM(purch_amt) as ventas_anuales
FROM orders
GROUP BY anio;

# funcion NOMBRE MES
SELECT 
MONTH(ord_date) as mes,
MONTHNAME(ord_date) as nombre_mes,
FORMAT(SUM(purch_amt),2) as ventas
FROM orders
GROUP BY mes, nombre_mes
ORDER BY SUM(purch_amt) desc;

#funcion NOMBRE DIA
SELECT 
DAYNAME(ord_date) as dia_semana,
FORMAT(SUM(purch_amt),2) as ventas
FROM orders
GROUP BY dia_semana;

# funcion CEILING FLOOR ROUND FORMAT
SELECT purch_amt,
ROUND(purch_amt,2) as ventas_round,
ROUND(purch_amt,1) as ventas_round_1,
FORMAT(purch_amt,2) as venntas_format,
CEILING(purch_amt) as ventas_ceiling, #redondea hacia arriba
FLOOR(purch_amt) AS ventas_floor  #redondea hacia abajo
FROM orders;

#funcion IFNULL y ISNULL
SET SQL_safe_updates = 0;
UPDATE salesman
SET city = null
WHERE city = '';
SET SQL_safe_updates = 1;

SELECT *
FROM salesman;

SELECT *,
IFNULL(city, 'Sin Ciudad')as city_2
FROM salesman;

SELECT *,
CASE 
	when city IS NULL THEN 'Sin ciudad'
    else city
END AS city
FROM
  salesman;
 
SELECT * FROM salesman
WHERE city IS NULL; 
 






