// S14 — Slowly Changing Dimensions (SCD)
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

USE I_MSc_DataScience; DROP TABLE IF EXISTS dim_customer;
CREATE TABLE dim_customer(customer_key INT AUTO_INCREMENT PRIMARY KEY,customer_id INT NOT NULL,customer_name VARCHAR(80),city VARCHAR(60),effective_from DATE NOT NULL,effective_to DATE NULL,is_current BOOLEAN NOT NULL DEFAULT TRUE);
INSERT INTO dim_customer(customer_id,customer_name,city,effective_from,effective_to,is_current) VALUES(1,'Asha Rao','Chennai','2025-01-01',NULL,TRUE),(2,'Bala Kumar','Madurai','2025-01-01',NULL,TRUE);
-- SCD Type 1: overwrite the current value
UPDATE dim_customer SET city='Coimbatore' WHERE customer_id=2 AND is_current=TRUE;
-- SCD Type 2: expire old row, then insert a new version
UPDATE dim_customer SET effective_to='2026-09-30',is_current=FALSE WHERE customer_id=1 AND is_current=TRUE;
INSERT INTO dim_customer(customer_id,customer_name,city,effective_from,effective_to,is_current) VALUES(1,'Asha Rao','Chennai','2026-10-01',NULL,TRUE);
SELECT * FROM dim_customer ORDER BY customer_id,effective_from;
