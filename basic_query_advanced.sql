-- Find all employees ordered by salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex and then name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name DESC;

-- Find first 5 employees in the table
SELECT *
FROM employee
LIMIT 5;

-- Find first and last names of all employees with 'AS'
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all the different gender with 'DISTINCT' keyword
SELECT DISTINCT sex
FROM employee;

