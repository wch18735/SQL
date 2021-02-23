SELECT * FROM student;

-- select specific columns (student.name is used when specify exact table)
SELECT student.name
FROM student 
-- order (DESC or ASC)
ORDER BY student_id, major DESC;

-- limit
SELECT *
FROM student
LIMIT 3;

-- select with where
SELECT *
FROM student
WHERE student_id <= 4 AND name <> 'Jack';

-- <, >, <=, >=, =, <>, AND, OR
-- <>: not equal to

-- combination
SELECT *
FROM student
WHERE major IN ('Biology', 'Sociology') AND student_id > 1;