// S08 — Joins and Regular Expressions
// Practical record date: 28-08-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS customers,orders;
CREATE TABLE customers(customer_id INT PRIMARY KEY,name VARCHAR(50),email VARCHAR(100),city VARCHAR(50));
CREATE TABLE orders(order_id INT PRIMARY KEY,customer_id INT,amount DECIMAL(10,2),status VARCHAR(20));
INSERT INTO customers VALUES(1,'Arun','arun@gmail.com','Chennai'),(2,'Bina','bina@college.edu','Madurai'),(3,'Charan','charan@yahoo.com','Chennai'),(4,'Diya','diya@example.org','Coimbatore');
INSERT INTO orders VALUES(101,1,1200,'PAID'),(102,1,500,'PENDING'),(103,3,900,'PAID'),(104,8,250,'PENDING');
SELECT c.name,o.order_id,o.amount FROM customers c INNER JOIN orders o ON c.customer_id=o.customer_id;
SELECT c.name,o.order_id,o.amount FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id;
SELECT c.name,o.order_id FROM customers c RIGHT JOIN orders o ON c.customer_id=o.customer_id;
SELECT email FROM customers WHERE email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$';
SELECT city,COUNT(*) FROM customers GROUP BY city;
