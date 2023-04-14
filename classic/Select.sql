SELECT * FROM productlines;

-------------------------------**************************---------------------------------------
SELECT * FROM products;

-------------------------------**************************---------------------------------------

SELECT 
	productlines.productLine,
	count(products.productCode),
	sum(quantityInstock),
	avg((MSRP - buyPrice) * quantityInStock),
	min((MSRP - buyPrice) * quantityInStock),
	max((MSRP - buyPrice) * quantityInStock),
	sum((MSRP - buyPrice) * quantityInStock)
FROM 
	products
LEFT JOIN
	productlines 
ON 
	productlines.productLine = products.productLine
GROUP BY
	productlines.productLine;

-------------------------------**************************---------------------------------------

SELECT
	offices.*,
	count(employees.employeeNumber)'qtd_funcionarios'	
FROM
	offices
LEFT JOIN
	employees
ON
	employees.officeCode = offices.officeCode
GROUP BY
	offices.officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory
ORDER BY
	qtd_funcionarios DESC;

-------------------------------**************************---------------------------------------


SELECT
	customers.customerNumber,
	customerName,
	count(customers.customerNumber)'itens',
	SUM(quantityOrdered)'quantidade',
	SUM(quantityOrdered * priceEach)'valor_total_compra'
FROM
	orders
LEFT JOIN
	orderdetails
ON
	orders.orderNumber = orderdetails.orderNumber
LEFT JOIN
	customers
ON
	customers.customerNumber = orders.customerNumber
WHERE
	orderDate >= '2003-10-01' AND orderDate <= '2003-10-31'
GROUP BY
	customers.customerNumber, customerName
ORDER BY
	valor_total_compra DESC;


select * from orders