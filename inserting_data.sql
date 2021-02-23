CREATE TABLE student (
    student_id INT,
    name VARCHAR(30),
    major VARCHAR(30),
    PRIMARY KEY(student_id)
);

-- INSERT rows

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');


-- SELECT from table ( * : all )
SELECT * FROM student;