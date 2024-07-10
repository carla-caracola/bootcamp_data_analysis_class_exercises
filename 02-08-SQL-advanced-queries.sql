-- This script includes the solutions to all the exercises from the SQL ADVANCED QUERIES LESSON in my Data Analytics Bootcamp at Adalab

SELECT * FROM customers;

-- exercise 1: Perform a SELECT query that returns the lowest customer ID number in the database
SELECT MIN(customer_number)
	FROM customers;

-- exercise 2: Select the average credit limit for customers in Spain
SELECT AVG(credit_limit)
    FROM (customers);
    
-- exercise 3: Select the number of customers in France
SELECT COUNT(customer_number)
    FROM (customers)
    WHERE country = "France";
    
-- exercise 4: Select the maximum credit that any of the employee with number 1323's clients have
SELECT MAX(credit_limit)
   FROM (customers)
   WHERE sales_rep_employee_number = 1323;

-- exercise 5: What is the maximum number of employees in the customers table?
SELECT MAX(sales_rep_employee_number)
   FROM (customers);

-- exercise 6: Perform a SELECT query that selects the number of each sales employee, as well as the number of different clients each one has.
SELECT COUNT(DISTINCT customer_number), sales_rep_employee_number
    FROM (customers)
    GROUP BY (sales_rep_employee_number);

-- exercise 7: Select the number of each sales employee who has more than 7 different clients
SELECT COUNT(DISTINCT customer_number) AS number_of_clients, sales_rep_employee_number
    FROM (customers)
    GROUP BY (sales_rep_employee_number)
    HAVING number_of_clients > 7;
    
-- exercise 8: Select the number of each sales employee, as well as the number of different clients each has. Assign a "High Performer" label to those employees with more than 7 different clients.
SELECT number_of_clients, 
       sales_rep_employee_number,
       CASE 
           WHEN number_of_clients > 7 THEN 'High performer'
       END AS EmployeeLabel
FROM (
    SELECT COUNT(DISTINCT customer_number) AS number_of_clients, 
           sales_rep_employee_number
    FROM customers
    GROUP BY sales_rep_employee_number
) AS subquery;

-- exercise 9: Select the number of customers in each country
SELECT COUNT(customer_number), country
	FROM customers
    GROUP BY country;
    
-- exercise 10: Select those countries that have customers from more than 3 different cities
SELECT country, COUNT(DISTINCT city) AS number_of_cities
	FROM customers
    GROUP BY country
    HAVING number_of_cities > 3;
    

