SELECT *  FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 3;

-- where multiple things
UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

-- set multiple things
UPDATE student
SET name = 'Tom', major = 'Mathmetics'
WHERE student_id = 1;

-- set all the things without where
UPDATE student
SET major = 'undecided';

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

-- delete all rows in student table
DELETE FROM student;