// S09 — Views
// Practical record date: 29-08-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP VIEW IF EXISTS high_salary_employees;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(emp_id INT PRIMARY KEY,emp_name VARCHAR(50),department VARCHAR(40),salary DECIMAL(10,2));
INSERT INTO employees VALUES(1,'Asha','IT',72000),(2,'Bala','HR',48000),(3,'Chitra','IT',85000),(4,'Dev','Sales',52000);
CREATE VIEW high_salary_employees AS SELECT emp_id,emp_name,department,salary FROM employees WHERE salary>=60000;
SELECT * FROM high_salary_employees;
SHOW CREATE VIEW high_salary_employees;
CREATE OR REPLACE VIEW high_salary_employees AS SELECT emp_id,emp_name,salary FROM employees WHERE salary>=70000;
SELECT * FROM high_salary_employees;
DROP VIEW high_salary_employees;
