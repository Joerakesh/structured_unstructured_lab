// S05 — Aggregate Functions
// Practical record date: 29-07-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales(sale_id INT AUTO_INCREMENT PRIMARY KEY,region VARCHAR(50),category VARCHAR(50),amount DECIMAL(10,2) DEFAULT NULL,sale_date DATE NOT NULL);
INSERT INTO sales(region,category,amount,sale_date) VALUES('North','Electronics',1500,'2026-01-10'),('South','Electronics',800,'2026-01-12'),('North','Furniture',400,'2026-01-15'),('North','Electronics',1200,'2026-01-18'),('South','Furniture',600,'2026-01-20'),('South','Furniture',NULL,'2026-01-22');
SELECT * FROM sales;
SELECT COUNT(*) AS total_rows,COUNT(amount) AS valid_sales_count,SUM(amount) AS total_revenue,AVG(amount) AS average_sale,MIN(amount) AS lowest_sale,MAX(amount) AS highest_sale FROM sales;
