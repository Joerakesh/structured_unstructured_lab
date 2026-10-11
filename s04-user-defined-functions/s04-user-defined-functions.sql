// S04 — User Defined Functions (UDF)
// Practical record date: 23-07-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

CREATE DATABASE IF NOT EXISTS I_MSc_DataScience;
USE I_MSc_DataScience;
DROP FUNCTION IF EXISTS AddNumbers;
DELIMITER //
CREATE FUNCTION AddNumbers(num1 INT,num2 INT) RETURNS INT NO SQL
BEGIN
 RETURN num1+num2;
END//
DELIMITER ;
SELECT AddNumbers(4,5) AS Addition;
SHOW FUNCTION STATUS WHERE Db='I_MSc_DataScience';
