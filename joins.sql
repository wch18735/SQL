-- Add the extra branch
INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Check branch table
SELECT * FROM branch;

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch    -- LEFT JOIN, RIGHT JOIN
ON employee.emp_id = branch.mgr_id;

-- Actually there are four types of JOIN (LEFT JOIN, RIGHT JOIN, FULL)