DROP TABLE student;
CREATE TABLE student (
  student_id INT PRIMARY KEY AUTO_INCREMENT,	-- primary key is not null and unique
  name VARCHAR(40) NOT NULL,					-- not allowed to fill with NULL
  -- major VARCHAR(40) UNIQUE,					-- unique keywords make that columns unique in row
  major VARCHAR(40) DEFAULT 'undecided'			-- allows to fill with 'default string' when it's NULL
);

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name) VALUES('Claire');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');
INSERT INTO student(name, major) values('June', NULL);

SELECT * FROM student;