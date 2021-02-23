-- In the .sql file, "ctrl + enter" just execute including line, not all lines in script

-- Always should end with semicolone ;
CREATE TABLE student (
    student_id INT,
    name VARCHAR(30),
    major VARCHAR(30),
    PRIMARY KEY(student_id)
);

-- Describe student table
DESCRIBE student;

-- Delete student table
DROP TABLE student;

-- ALTER table
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;

