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

-- consulta que vendedores venden en Paris. Devolver nombre y ciudad
SELECT name, city
FROM salesman
WHERE city = 'Paris';

-- Buscar clientes cuya evaluacion sea 200. Devolver id_ cliente, nombre_ cliente, city, calificacion, id_vendedor
SELECT customer_id,cust_name, city,grade, salesman_id
FROM customer
WHERE grade = 200; 

-- Buscar pedidos entregados por un vendedor con el id 5001. Devolver nro-pedido, fecha pedido, importe_compra
SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id = 5001;

-- Devolver los articulos cuyos precios son mayores o iguales a $250. Ordenar el resultado por precio del producto en forma descendente, luego el nombre del producto en forma asc. Devolver en pro_name y pro_price 
SELECT pro_name, pro_com
FROM item_mast
WHERE pro_com >=250
ORDER BY pro_com DESC, pro_name asc;

-- WHERE y AND
-- Escriba una declaración de SQL donde la ciudad del vendedor sea Paris y su comision 0.13
SELECT city, commission
FROM salesman
WHERE city = 'Paris' AND commission = 0.13;

-- Selecciona los pedidos que son mayores al 27/06/2012 y que los hizo el vendedor 5001
SELECT * FROM orders
WHERE ord_date > '2012-06-27' and salesman_id = 5001;

-- Selecciona los pedidos que son mayores al 27/06/2012 y el importe de la venta es mayor a $500
SELECT * FROM orders
WHERE ord_date >'2012-06-27' AND purch_amt >500;

-- WHERE y Or
-- Escriba una declaracion de sql donde la fecha del pedido sea mayor a 2012-10-05 o el importe de pedido sea mayor a 300
SELECT * FROM orders
WHERE ord_date > '2012-10-05' OR purch_amt > 300;

-- Selecciona los clientes que son de la ciudad de NY o que son el vendedor 5002
SELECT * FROM customer
WHERE city = 'New York' OR salesman_id = 5002;

-- Selecciona los pedidos que son menores al 2012-10-05 o el vendedor es 5002
SELECT * FROM orders
WHERE ord_date < '2012-10-05' OR salesman_id = 5002;

-- WHERE In
-- Escriba una declaracion donde el vendedor se encuentra dentro de los valores (5002 5003 5001)
SELECT * FROM salesman
WHERE salesman_id IN (5002, 5003, 5001);

-- Selecciona los vendedores donde sus ciudades se encuentren dentro de NY o Paris
SELECT * FROM salesman
WHERE city IN ('New York', 'Paris');

-- Selecciona los clientes cuyas ciudades son California o London
SELECT * FROM customer
WHERE city IN ('California', 'London');

-- WHERE like y limit
-- Los clientes que tienen como nombre Brad
SELECT * FROM customer
WHERE cust_name LIKE 'Brad%';

-- Los productos que tengan en alguna parte de su nombre la palaba 'drive'
SELECT * FROM item_mast
WHERE pro_name LIKE '%drive%';

-- Selecciona los empleados que su nombre comiencen con la letra M
SELECT * FROM emp_details
WHERE emp_fname LIKE 'M%';

-- LIMIT
SELECT * FROM emp_details
ORDER BY EMP_DEPT DESC
LIMIT 3;







 
