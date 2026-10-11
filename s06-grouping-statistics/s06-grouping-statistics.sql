// S06 — GROUP BY, HAVING, WHERE, IN / NOT IN, CASE WHEN, Statistical Functions
// Practical record date: 03-08-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales(sale_id INT AUTO_INCREMENT PRIMARY KEY,region VARCHAR(50),category VARCHAR(50),amount DECIMAL(10,2),sale_date DATE);
INSERT INTO sales(region,category,amount,sale_date) VALUES('North','Electronics',1500,'2026-01-10'),('South','Electronics',800,'2026-01-12'),('North','Furniture',400,'2026-01-15'),('North','Electronics',1200,'2026-01-18'),('South','Furniture',600,'2026-01-20'),('South','Furniture',NULL,'2026-01-22');
SELECT region,COUNT(*) AS total_orders,SUM(amount) AS region_revenue,ROUND(AVG(amount),2) AS avg_order_value FROM sales GROUP BY region;
SELECT category,COUNT(DISTINCT region) AS distinct_regions,SUM(amount) AS category_revenue FROM sales GROUP BY category HAVING SUM(amount)>1000;
SELECT region,SUM(amount) AS revenue_over_1000_sales FROM sales WHERE amount>1000 GROUP BY region;
SELECT COUNT(*) AS in_both_categories FROM sales WHERE category IN('Electronics','Furniture');
SELECT COUNT(*) AS not_electronics FROM sales WHERE category NOT IN('Electronics');
SELECT AVG(amount),STD(amount),VARIANCE(amount),STDDEV_POP(amount),STDDEV_SAMP(amount),VAR_POP(amount),VAR_SAMP(amount) FROM sales;
SELECT sale_id,region,amount,CASE WHEN amount IS NULL THEN 'No Sale / Returned' WHEN amount>=1200 THEN 'High Value' WHEN amount>=600 THEN 'Medium Value' ELSE 'Low Value' END AS sale_category FROM sales;
