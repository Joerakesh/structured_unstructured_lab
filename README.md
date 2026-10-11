<div align="center">

<img src="https://eatright.loyolacollege.edu/_app/immutable/assets/loyola-logo.C2NjGpy4.webp" alt="Loyola College logo" width="130" />

# LOYOLA COLLEGE, CHENNAI

### Department of Data Science

# Structured and Unstructured Database Lab

**M.Sc. Data Science · I Semester · Academic Year 2026–2027**

**Practical Record & Code Portfolio · PDS1MC17**

</div>

---

## Student Details

| Field | Details |
|---|---|
| **Name** | Joe Rakesh A |
| **Department Number (D.No.)** | **26-PDS-002** |
| **Programme / Class** | I M.Sc. Data Science |
| **Semester** | I Semester |
| **Course Title** | Structured and Unstructured Database Lab |
| **Institution** | Loyola College, Chennai – 600 034 |
| **Academic Year** | 2026–2027 |

> This repository accompanies the Structured and Unstructured Database Lab practical record for the Department of Data Science. Exercise topics and ordering follow the supplied record. The scripts in this repository are organized for study and execution; run them against the relevant database engine to verify outputs.

## About this repository

This repository contains **26 database laboratory exercises** grouped by experiment number. Part A covers structured data using MySQL 8; Part B covers document data using MongoDB and graph data using Neo4j.

Each exercise folder contains a standalone script and a README with the exercise aim, engine, execution guidance, and notes. Database-specific outputs are generated when you run the scripts in a configured environment; GitHub Actions performs structure checks and packages the source files rather than pretending to run a live database.

## Exercise Index

### Part A — Structured Data (MySQL 8)

| Ex. No. | Experiment | Main concepts | SQL program | README |
|---:|---|---|---|---|
| S01 | Basic SQL Operations / DDL & DML | Database/table creation, constraints, insert/update/delete, table creation | [SQL](s01-basic-ddl-dml/s01-basic-ddl-dml.sql) | [README](s01-basic-ddl-dml/README.md) |
| S02 | String Functions and Manipulations | LENGTH, CONCAT, UPPER, SUBSTRING, LPAD, REPLACE, ASCII | [SQL](s02-string-functions/s02-string-functions.sql) | [README](s02-string-functions/README.md) |
| S03 | String Manipulations | LOCATE, STRCMP, BIN, SUBSTRING, LPAD, RPAD | [SQL](s03-string-manipulations/s03-string-manipulations.sql) | [README](s03-string-manipulations/README.md) |
| S04 | User Defined Functions (UDF) | Stored function, parameters, return value | [SQL](s04-user-defined-functions/s04-user-defined-functions.sql) | [README](s04-user-defined-functions/README.md) |
| S05 | Aggregate Functions | COUNT, SUM, AVG, MIN, MAX, NULL handling | [SQL](s05-aggregate-functions/s05-aggregate-functions.sql) | [README](s05-aggregate-functions/README.md) |
| S06 | Grouping and Statistical Functions | GROUP BY, HAVING, WHERE, IN/NOT IN, CASE, variance and standard deviation | [SQL](s06-grouping-statistics/s06-grouping-statistics.sql) | [README](s06-grouping-statistics/README.md) |
| S07 | Subqueries | Scalar, correlated, and multi-row subqueries | [SQL](s07-subqueries/s07-subqueries.sql) | [README](s07-subqueries/README.md) |
| S08 | Joins and Regular Expressions | INNER/LEFT/RIGHT JOIN, REGEXP | [SQL](s08-joins-regex/s08-joins-regex.sql) | [README](s08-joins-regex/README.md) |
| S09 | Views | Create, query, replace, inspect, and drop views | [SQL](s09-views/s09-views.sql) | [README](s09-views/README.md) |
| S10 | Partitions | Range partitioning, partition pruning, metadata | [SQL](s10-partitions/s10-partitions.sql) | [README](s10-partitions/README.md) |
| S11 | Normalization (2NF & 3NF) | Separate entities, primary/foreign keys, relationships | [SQL](s11-normalization/s11-normalization.sql) | [README](s11-normalization/README.md) |
| S12 | Window Functions | ROW_NUMBER, RANK, running totals, LAG, LEAD | [SQL](s12-window-functions/s12-window-functions.sql) | [README](s12-window-functions/README.md) |
| S13 | Indexing | Single-column, unique and composite indexes, EXPLAIN | [SQL](s13-indexing/s13-indexing.sql) | [README](s13-indexing/README.md) |
| S14 | Slowly Changing Dimensions (SCD) | Type 1 overwrite and Type 2 history | [SQL](s14-slowly-changing-dimensions/s14-slowly-changing-dimensions.sql) | [README](s14-slowly-changing-dimensions/README.md) |

### Part B — Unstructured Data (MongoDB and Neo4j)

| Ex. No. | Experiment | Main concepts | Program | README |
|---:|---|---|---|---|
| U01 | MongoDB CRUD Operations | Insert, find, update, delete, sort | [mongosh JS](u01-mongodb-crud/u01-mongodb-crud.js) | [README](u01-mongodb-crud/README.md) |
| U02 | Collection Queries in MongoDB | Filters, projections, regex, sorting, limits | [mongosh JS](u02-collection-queries/u02-collection-queries.js) | [README](u02-collection-queries/README.md) |
| U03 | String Manipulations in MongoDB | Trim, case conversion, split, regex | [mongosh JS](u03-mongodb-strings/u03-mongodb-strings.js) | [README](u03-mongodb-strings/README.md) |
| U04 | User-Defined Functions in MongoDB | Reusable mongosh helper and aggregation expressions | [mongosh JS](u04-mongodb-udf/u04-mongodb-udf.js) | [README](u04-mongodb-udf/README.md) |
| U05 | Standard Deviation and Variance | Statistical aggregation operators | [mongosh JS](u05-mongodb-statistics/u05-mongodb-statistics.js) | [README](u05-mongodb-statistics/README.md) |
| U06 | Aggregate Functions in MongoDB | $group, $sum, $avg, $min, $max, $match | [mongosh JS](u06-mongodb-aggregation/u06-mongodb-aggregation.js) | [README](u06-mongodb-aggregation/README.md) |
| U07 | Import JSON Data Using mongoimport (Iris Dataset) | Import, inspect, index and aggregate dataset | [mongosh JS](u07-mongoimport-iris/u07-mongoimport-iris.js) | [README](u07-mongoimport-iris/README.md) |
| U08 | Insert, Search, Update and Manipulate Array Data | Array filters, $addToSet, $push, $pull, $unwind | [mongosh JS](u08-array-data/u08-array-data.js) | [README](u08-array-data/README.md) |
| U09 | Replica, Backup and Restore in MongoDB | Replica set, mongodump, mongorestore | [mongosh JS](u09-replica-backup-restore/u09-replica-backup-restore.js) | [README](u09-replica-backup-restore/README.md) |
| U10 | Neo4j Cluster/Connection, Node Creation and Matching | Nodes, labels, properties, MATCH, indexes | [Cypher](u10-neo4j-nodes/u10-neo4j-nodes.cypher) | [README](u10-neo4j-nodes/README.md) |
| U11 | Neo4j Relationship Creation and Display | MERGE relationships, properties, graph patterns | [Cypher](u11-neo4j-relationships/u11-neo4j-relationships.cypher) | [README](u11-neo4j-relationships/README.md) |
| U12 | Indexing in MongoDB (additional) | Unique and compound indexes, explain plans | [mongosh JS](u12-mongodb-indexing/u12-mongodb-indexing.js) | [README](u12-mongodb-indexing/README.md) |

## Learning Outcomes

Through these practical exercises, the lab covers:

- Designing relational tables and applying constraints for data integrity.
- Writing SQL queries for text manipulation, filtering, grouping, subqueries, joins, and statistical summaries.
- Understanding views, partitions, normalization, window functions, indexes, and slowly changing dimensions.
- Performing CRUD operations and analytical aggregations on MongoDB documents.
- Working with JSON import, array fields, indexes, replica sets, backup and restore.
- Modeling graph data with Neo4j nodes, relationships, and Cypher queries.

## Technology Stack

- **Relational database:** MySQL 8
- **Document database:** MongoDB and mongosh
- **Graph database:** Neo4j and Cypher
- **Import / backup utilities:** mongoimport, mongodump, mongorestore
- **Version control:** Git and GitHub
- **Automation:** GitHub Actions

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Joerakesh/structured_unstructured_lab.git
cd structured_unstructured_lab
```

### 2. Install the database tools

Install and configure MySQL 8 for Part A, MongoDB Database Tools and mongosh for MongoDB exercises, and Neo4j for graph exercises. Make sure each server is running and you have permission to create the sample database, collections, indexes, and graph entities.

### 3. Run a MySQL exercise

Open the selected `.sql` file in MySQL Workbench or run it from a terminal:

```bash
mysql -u your_username -p < s01-basic-ddl-dml/s01-basic-ddl-dml.sql
```

Review `DROP`, `DELETE`, and database selection statements before running scripts against any environment containing data you need.

### 4. Run a MongoDB exercise

Start mongosh connected to your MongoDB instance, then execute a script, for example:

```bash
mongosh "mongodb://localhost:27017" u01-mongodb-crud/u01-mongodb-crud.js
```

Some exercises need additional setup. U07 requires the Iris JSON data file and `mongoimport`; U09 requires a configured replica set and MongoDB Database Tools.

### 5. Run a Neo4j exercise

Open Neo4j Browser or use `cypher-shell`, select your database, and execute the relevant `.cypher` file. Ensure the server version supports the syntax used in the exercise.

## Results & Academic Notes

The exercise folders document the aim and execution guidance. Actual result sets depend on database version, permissions, and current data. Run each script to capture the output for your practical record. The CI workflow validates the folder/script structure and produces a source ZIP; **it does not execute every query against live MySQL, MongoDB, and Neo4j servers**.

## Repository Features

- **26 numbered exercises:** 14 MySQL exercises and 12 MongoDB/Neo4j entries.
- **Per-exercise README:** topic, engine and run instructions.
- **Standalone programs:** SQL, mongosh JavaScript, and Cypher.
- **Automated validation:** GitHub Actions checks that all expected exercise folders and script files exist.
- **Downloadable artifact:** successful Actions runs upload a ZIP of the source files for 14 days.

View [GitHub Actions](https://github.com/Joerakesh/structured_unstructured_lab/actions) for the latest validation status and downloadable artifacts.

## Maintainer

**Joe Rakesh A** · [GitHub profile](https://github.com/Joerakesh)

Department of Data Science · Loyola College, Chennai.

---

<div align="center">

_Structured and Unstructured Database Lab · PDS1MC17 · I M.Sc. Data Science · 2026–2027_

</div>
