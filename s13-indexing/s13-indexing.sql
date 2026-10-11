// S13 — Indexing
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

USE I_MSc_DataScience; DROP TABLE IF EXISTS customers_index;
CREATE TABLE customers_index(customer_id INT PRIMARY KEY,email VARCHAR(120),city VARCHAR(50),last_name VARCHAR(60));
INSERT INTO customers_index VALUES(1,'asha@example.com','Chennai','Rao'),(2,'bala@example.com','Madurai','Kumar'),(3,'chitra@example.com','Chennai','Iyer'),(4,'dev@example.com','Pune','Rao');
CREATE INDEX idx_customers_city ON customers_index(city);
CREATE UNIQUE INDEX idx_customers_email ON customers_index(email);
CREATE INDEX idx_customers_city_lastname ON customers_index(city,last_name);
SHOW INDEX FROM customers_index;
EXPLAIN SELECT * FROM customers_index WHERE city='Chennai';
DROP INDEX idx_customers_city ON customers_index;
