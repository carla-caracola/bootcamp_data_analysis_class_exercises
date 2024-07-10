-- This script includes the solutions to all the exercises from the SQL JOINS lesson in my Data Analytics Bootcamp at Adalab

USE tienda;

-- Exercise 1: Select the ID, first name, last name of the employees and the ID of each client associated with them, using CROSS JOIN.
SELECT 
	e.employee_number, 
    e.first_name, 
    e.last_name,
    c.customer_number
FROM 
	employees AS e
CROSS JOIN 
	customers AS c
ORDER BY
	e.employee_number;

-- Exercise 2: Select the ID, first name, last name of the employees, for those with more than 8 clients, using CROSS JOIN
SELECT
	e.employee_number, 
    e.first_name, 
    e.last_name,
	COUNT(c.customer_number) AS number_of_customers
FROM 
	employees AS e
CROSS JOIN 
	customers AS c
GROUP BY
    e.employee_number
HAVING
	number_of_customers > 8
ORDER BY 
	number_of_customers;

-- Exercise 3: Select the first and last names of employees who have clients from more than one country, using CROSS JOIN
SELECT
	e.first_name,
    e.last_name,
    COUNT(c.country) AS countries
FROM
	employees AS e
CROSS JOIN
	customers AS c
GROUP BY
	e.first_name,
    e.last_name
HAVING
	countries > 1
ORDER BY
	e.first_name,
    e.last_name;

-- Exercise 4: Select the ID, first name, last name of the employees and the ID of each client associated with them, using INNER JOIN.
SELECT
	e.employee_number, 
    e.first_name, 
    e.last_name,
    c.customer_number
FROM 
	employees AS e
INNER JOIN
	customers AS c
    ON e.employee_number = c.sales_rep_employee_number
ORDER BY employee_number;

-- Exercise 5: Select the ID, first name, last name of the employees, for those with more than 8 clients, using INNER JOIN.
SELECT
	e.employee_number, 
    e.first_name, 
    e.last_name,
	COUNT(c.customer_number) AS number_of_customers
FROM 
	employees AS e
INNER JOIN
	customers AS c
    ON e.employee_number = c.sales_rep_employee_number
GROUP BY
    e.employee_number
HAVING
	number_of_customers > 5
ORDER BY 
	number_of_customers;

-- Exercise 6: Select the first and last names of employees who have clients from more than one country, using INNER JOIN.
SELECT
	e.first_name,
    e.last_name,
    COUNT(c.country) AS countries
FROM
	employees AS e
INNER JOIN
	customers AS c
	ON e.employee_number = c.sales_rep_employee_number
GROUP BY
	e.first_name,
    e.last_name
HAVING
	countries > 1
ORDER BY
	e.first_name,
    e.last_name;

-- Exercise 7: Select the ID, first name, last name of all employees and the ID of each client associated with them (if they have one)
SELECT
	e.employee_number, 
    e.first_name, 
    e.last_name,
    c.customer_number
FROM 
	employees AS e
INNER JOIN
	customers AS c
    ON e.employee_number = c.sales_rep_employee_number
ORDER BY employee_number;

-- Exercise 8: Select the ID of all customers, and the first and last names of the employees who take their orders (if any).
SELECT
	c.customer_number,
    e.first_name,
    e.last_name
FROM 
	customers AS c
LEFT JOIN 
	employees AS e
    ON  c.sales_rep_employee_number = e.employee_number
ORDER BY customer_number
    
    

	


