-- Special filter operators lesson - Exercises
USE tienda;

-- 1) Select the last names found in both tables for employees and customers, with alias 'Last_Name'
SELECT 
	contact_last_name AS Last_Name
FROM
	customers
UNION
SELECT 
	last_name
FROM
	employees;


-- 2) Select names with alias 'firstname' and surnames, with alias 'lastname' for both customers and employees from the employees and customers tables.

SELECT 
	contact_first_name AS firstname,
    contact_last_name AS lastname
FROM
	customers
UNION
SELECT 
	first_name AS firstname,
    last_name AS lastname
FROM
	employees;

-- 3) Select all names with alias 'firstname' and surnames, with alias 'lastname' from both customers and employees from the employees and customers tables.
SELECT 
	contact_first_name AS firstname,
    contact_last_name AS lastname
FROM
	customers
UNION ALL
SELECT 
	first_name AS firstname,
    last_name AS lastname
FROM
	employees;
    
-- 4) We want to see the employee_number as 'Employee Number', first_name as 'Employee First Name' and last_name as 'Employee Last Name' for employees with employee_number: 1002,1076,1088 and 1612.
SELECT 
	employee_number AS "Employee Number",
    first_name AS "Employee First Name",
    last_name AS "Employee Last Name"
FROM 
	employees
WHERE 
	employee_number IN (1002,1076,1088, 1612);

-- 5) We now want to see the 'city' and company names as 'company name' from the customers table, which are not in: Ireland, France, Germany.
SELECT 
	city AS City, 
    customer_name AS "Company Name",
    country AS Country
FROM 
	customers
WHERE 
	country NOT IN ("Ireland", "France", "Germany");

-- 6) Select the customer name and city fields from those cities in the customers table that end in 'on'
SELECT
	customer_name, 
    city
FROM 
	customers
WHERE
	city LIKE "%on";

-- 7) Select the customer name and city fields from those cities in the customers table that end in 'on' and are only 4 in length
SELECT
	customer_name, 
    city
FROM 
	customers
WHERE
	city LIKE "%on" AND CHAR_LENGTH(city)=4;







    




