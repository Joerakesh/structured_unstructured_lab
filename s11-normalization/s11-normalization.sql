// S11 — Normalization (2NF & 3NF)
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

CREATE DATABASE IF NOT EXISTS I_MSc_DataScience; USE I_MSc_DataScience;
DROP TABLE IF EXISTS enrollment,student,course,department;
CREATE TABLE department(department_id INT PRIMARY KEY,department_name VARCHAR(80));
CREATE TABLE student(student_id INT PRIMARY KEY,student_name VARCHAR(80),department_id INT,FOREIGN KEY(department_id) REFERENCES department(department_id));
CREATE TABLE course(course_id INT PRIMARY KEY,course_name VARCHAR(80),department_id INT,FOREIGN KEY(department_id) REFERENCES department(department_id));
CREATE TABLE enrollment(student_id INT,course_id INT,grade CHAR(2),PRIMARY KEY(student_id,course_id),FOREIGN KEY(student_id) REFERENCES student(student_id),FOREIGN KEY(course_id) REFERENCES course(course_id));
INSERT INTO department VALUES(1,'Data Science'),(2,'Computer Science');
INSERT INTO student VALUES(101,'Asha',1),(102,'Bala',2),(103,'Chitra',1);
INSERT INTO course VALUES(10,'SQL',1),(11,'Python',1),(12,'Networks',2);
INSERT INTO enrollment VALUES(101,10,'A'),(101,11,'B'),(102,12,'A'),(103,10,'A');
SELECT s.student_name,d.department_name,c.course_name,e.grade FROM enrollment e JOIN student s USING(student_id) JOIN course c USING(course_id) JOIN department d ON d.department_id=s.department_id;
