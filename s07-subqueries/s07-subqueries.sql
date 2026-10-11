// S07 — Subqueries
// Practical record date: 24-08-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(emp_id INT PRIMARY KEY,emp_name VARCHAR(50),department VARCHAR(40),salary DECIMAL(10,2));
INSERT INTO employees VALUES(1,'Asha','IT',72000),(2,'Bala','HR',48000),(3,'Chitra','IT',85000),(4,'Dev','Sales',52000),(5,'Esha','Sales',61000),(6,'Farhan','HR',50000);
SELECT * FROM employees WHERE salary>(SELECT AVG(salary) FROM employees);
SELECT department,emp_name,salary FROM employees e WHERE salary=(SELECT MAX(salary) FROM employees WHERE department=e.department);
SELECT * FROM employees WHERE department IN(SELECT department FROM employees GROUP BY department HAVING AVG(salary)>55000);
SELECT emp_name,(SELECT AVG(salary) FROM employees) AS company_avg FROM employees;
