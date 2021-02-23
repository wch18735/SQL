-- Find a list of employee and branch names
-- UNION must take same number of columns to each statement
SELECT first_name AS Company_name
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- Find a list of all client & branch suppliers' names
-- A lot of circumstances, they identify table_name.column
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;