// S12 — Window Functions
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

USE I_MSc_DataScience; DROP TABLE IF EXISTS sales_window;
CREATE TABLE sales_window(sale_id INT PRIMARY KEY,region VARCHAR(30),salesperson VARCHAR(50),amount DECIMAL(10,2),sale_date DATE);
INSERT INTO sales_window VALUES(1,'North','Asha',500,'2026-01-01'),(2,'North','Bala',700,'2026-01-02'),(3,'North','Asha',300,'2026-01-03'),(4,'South','Chitra',900,'2026-01-01'),(5,'South','Dev',400,'2026-01-02');
SELECT sale_id,region,salesperson,amount,ROW_NUMBER() OVER(PARTITION BY region ORDER BY amount DESC) AS row_num,RANK() OVER(PARTITION BY region ORDER BY amount DESC) AS rank_num,SUM(amount) OVER(PARTITION BY region ORDER BY sale_date) AS running_total,AVG(amount) OVER(PARTITION BY region) AS region_avg FROM sales_window;
SELECT sale_id,amount,LAG(amount) OVER(ORDER BY sale_date,sale_id) AS previous_amount,LEAD(amount) OVER(ORDER BY sale_date,sale_id) AS next_amount FROM sales_window;
