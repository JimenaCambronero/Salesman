SELECT * FROM SALESMAN;

-- mostrar nombres y comisiones para todos los vendedores
SELECT name, commission
FROM salesman;

-- Trae las columnas con un orden especifico, como fecha de pedido, id vendedor, num de pedido y monto de compra
SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

-- SELECT DISTINCT
-- de la tabla orders trae la identificacion unica de los vendedores. el salesman_id
SELECT DISTINCT(salesman_id) 
FROM orders;

-- devuelve los apellidos unicos
SELECT DISTINCT emp_lname
FROM emp_details;

-- traer los valores unicos de ciudad
SELECT DISTINCT city
FROM customer;

-- Order BY
SELECT * FROM salesman
ORDER BY name;

SELECT * FROM salesman
ORDER BY name ASC;

SELECT * FROM salesman
ORDER BY city ASC;



