// S02 — String Functions and Manipulations
// Practical record date: 21-07-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS luxury_clothing;
CREATE TABLE luxury_clothing(id INT AUTO_INCREMENT PRIMARY KEY,brand_name VARCHAR(50),product_category VARCHAR(50),country VARCHAR(50),price_usd DECIMAL(10,2),founder VARCHAR(100));
INSERT INTO luxury_clothing(brand_name,product_category,country,price_usd,founder) VALUES
('Gucci','Leather Shoulder Bag','Italy',2980,'Guccio Gucci'),('Chanel','Tweed Jacket','France',6500,'Coco Chanel'),('Louis Vuitton','Keepall Duffel Bag','France',2570,'Louis Vuitton'),('Burberry','Classic Trench Coat','United Kingdom',2490,'Thomas Burberry'),('Prada','Nylon Backpack','Italy',1850,'Mario Prada');
SELECT LENGTH(founder) AS founder_length,UPPER(CONCAT(brand_name,'--',country)) AS brand_country,SUBSTRING(product_category,1,5) AS prefix,LPAD(product_category,15,'&') AS padded,REPLACE(product_category,' ','_') AS underscored,ASCII(country) AS first_char_ascii FROM luxury_clothing;
SELECT TRIM(' ' FROM ' Hello World ') AS trimmed,OCT(12) AS octal_value,BIN(12) AS binary_value,ASCII('2') AS ascii_value,STRCMP('birkenstockgermany.com','geeksforgeeks.com') AS comparison;
