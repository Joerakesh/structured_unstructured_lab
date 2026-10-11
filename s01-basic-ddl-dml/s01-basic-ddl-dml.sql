// S01 — Basic SQL Operations / DDL & DML
// Practical record date: 09-07-2026
// Course: PDS1MC17 Structured and Unstructured Database Lab
// Student: Joe Rakesh A | Department No.: 26-PDS-002

CREATE DATABASE IF NOT EXISTS I_MSc_DataScience;
USE I_MSc_DataScience;
DROP TABLE IF EXISTS instagram_records;
CREATE TABLE instagram_records (
 id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(100) NOT NULL UNIQUE,
 full_name VARCHAR(150) NOT NULL,
 gender ENUM('Male','Female','Other') NOT NULL,
 followers_count BIGINT NOT NULL,
 country VARCHAR(100) NOT NULL,
 profession VARCHAR(150) NOT NULL,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO instagram_records (username,full_name,gender,followers_count,country,profession) VALUES
('@cristiano','Cristiano Ronaldo','Male',667000000,'Portugal','Footballer'),
('@leomessi','Lionel Messi','Male',511000000,'Argentina','Footballer'),
('@selenagomez','Selena Gomez','Female',417000000,'United States','Singer and Actress'),
('@therock','Dwayne Johnson','Male',391000000,'United States','Actor'),
('@arianagrande','Ariana Grande','Female',372000000,'United States','Singer'),
('@beyonce','Beyonce','Female',309000000,'United States','Singer'),
('@justinbieber','Justin Bieber','Male',293000000,'Canada','Singer'),
('@shakira','Shakira','Female',290000000,'Colombia','Singer'),
('@virat','Virat Kohli','Male',270000000,'India','Cricketer'),
('@nasa','NASA','Other',100000000,'United States','Science');
SELECT full_name,followers_count FROM instagram_records ORDER BY followers_count DESC;
ALTER TABLE instagram_records RENAME COLUMN followers_count TO followers;
UPDATE instagram_records SET followers=571000000 WHERE username='@leomessi';
DELETE FROM instagram_records WHERE username='@shakira';
SELECT COUNT(*) AS rows_left FROM instagram_records;
CREATE TABLE music_artists AS SELECT username,full_name,followers,profession FROM instagram_records WHERE country IN ('United States','Canada');
CREATE TEMPORARY TABLE temp_influencers AS SELECT full_name,country FROM instagram_records WHERE country='United States';
CREATE TABLE instagram LIKE instagram_records;
SHOW TABLES;
