// S03 — String Manipulations
// Practical record date: 22-07-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

USE I_MSc_DataScience;
DROP TABLE IF EXISTS shipments,users,orders_audit,user_permissions,inventory,accounts;
CREATE TABLE shipments(shipment_id INT PRIMARY KEY,status_code CHAR(1));
INSERT INTO shipments VALUES(1,'A'),(2,'D'),(3,'P'),(4,'R');
CREATE TABLE users(user_id INT PRIMARY KEY,email VARCHAR(100));
INSERT INTO users VALUES(1,'arun@gmail.com'),(2,'priya@yahoo.com'),(3,'rahul@college.edu.in'),(4,'divya@outlook.com');
CREATE TABLE orders_audit(audit_id INT PRIMARY KEY,order_id INT,old_status VARCHAR(20),new_status VARCHAR(20));
INSERT INTO orders_audit VALUES(1,101,'Pending','Shipped'),(2,102,'Shipped','Shipped'),(3,103,'Pending','Cancelled'),(4,104,'Shipped','Delivered'),(5,105,'Delivered','Delivered');
CREATE TABLE user_permissions(user_id INT PRIMARY KEY,permission INT);
INSERT INTO user_permissions VALUES(1,5),(2,7),(3,12),(4,1);
CREATE TABLE inventory(item_id INT PRIMARY KEY,serial_code VARCHAR(20));
INSERT INTO inventory VALUES(1,'SN-2024-001'),(2,'SN-2025-014'),(3,'SN-2023-777');
CREATE TABLE accounts(account_number VARCHAR(10),account_name VARCHAR(30));
INSERT INTO accounts VALUES('12345','Savings'),('987','Current'),('4567890','Salary');
SELECT status_code,ASCII(status_code) AS ascii_value FROM shipments;
SELECT email,SUBSTRING(email,LOCATE('@',email)+1) AS domain FROM users;
SELECT STRCMP(old_status,new_status) AS comparison_flag,COUNT(*) AS total_updates FROM orders_audit GROUP BY STRCMP(old_status,new_status);
SELECT user_id,permission,BIN(permission) AS permission_binary FROM user_permissions;
SELECT serial_code,SUBSTRING(serial_code,4,4) AS manufacturing_year FROM inventory;
SELECT LPAD(account_number,10,'0') AS account_number_fmt,RPAD(account_name,20,'-') AS account_name_fmt FROM accounts;
