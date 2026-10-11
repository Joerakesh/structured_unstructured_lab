// S10 — Partitions
// Practical record date: 16-09-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS sales_partitioned;
CREATE TABLE sales_partitioned(sale_id INT NOT NULL,sale_date DATE NOT NULL,amount DECIMAL(10,2),PRIMARY KEY(sale_id,sale_date))
PARTITION BY RANGE COLUMNS(sale_date)(
 PARTITION p2025 VALUES LESS THAN ('2026-01-01'),
 PARTITION p2026 VALUES LESS THAN ('2027-01-01'),
 PARTITION pmax VALUES LESS THAN (MAXVALUE)
);
INSERT INTO sales_partitioned VALUES(1,'2025-03-15',500),(2,'2026-02-20',900),(3,'2026-09-10',1200),(4,'2027-01-05',300);
SELECT * FROM sales_partitioned PARTITION(p2026);
SELECT PARTITION_NAME,TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='sales_partitioned';
EXPLAIN SELECT * FROM sales_partitioned WHERE sale_date>='2026-01-01' AND sale_date<'2027-01-01';
