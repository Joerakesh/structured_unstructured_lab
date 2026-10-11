<div align="center">

# LOYOLA COLLEGE, CHENNAI
### Department of Data Science

# Structured and Unstructured Database Lab
**Course Code: PDS1MC17 · I M.Sc. Data Science · Semester I · 2026–2027**

**Student:** Joe Rakesh A · **Department No.:** 26-PDS-002

</div>

---

This repository follows the supplied practical record. Exercise IDs and order are preserved: **Part A — MySQL 8 (S01–S14)** and **Part B — MongoDB and Neo4j (U01–U12)**.

## Part A — Structured Data (MySQL 8)

| ID | Exercise | Folder |
|---|---|---|
| S01 | Basic SQL Operations / DDL & DML | [s01-basic-ddl-dml](s01-basic-ddl-dml/) |
| S02 | String Functions and Manipulations | [s02-string-functions](s02-string-functions/) |
| S03 | String Manipulations | [s03-string-manipulations](s03-string-manipulations/) |
| S04 | User Defined Functions (UDF) | [s04-user-defined-functions](s04-user-defined-functions/) |
| S05 | Aggregate Functions | [s05-aggregate-functions](s05-aggregate-functions/) |
| S06 | GROUP BY, HAVING, WHERE, IN/NOT IN, CASE WHEN, Statistical Functions | [s06-grouping-statistics](s06-grouping-statistics/) |
| S07 | Subqueries | [s07-subqueries](s07-subqueries/) |
| S08 | Joins and Regular Expressions | [s08-joins-regex](s08-joins-regex/) |
| S09 | Views | [s09-views](s09-views/) |
| S10 | Partitions | [s10-partitions](s10-partitions/) |
| S11 | Normalization (2NF & 3NF) | [s11-normalization](s11-normalization/) |
| S12 | Window Functions | [s12-window-functions](s12-window-functions/) |
| S13 | Indexing | [s13-indexing](s13-indexing/) |
| S14 | Slowly Changing Dimensions (SCD) | [s14-slowly-changing-dimensions](s14-slowly-changing-dimensions/) |

## Part B — Unstructured Data (MongoDB and Neo4j)

| ID | Exercise | Folder |
|---|---|---|
| U01 | MongoDB CRUD Operations | [u01-mongodb-crud](u01-mongodb-crud/) |
| U02 | Collection Queries in MongoDB | [u02-collection-queries](u02-collection-queries/) |
| U03 | String Manipulations in MongoDB | [u03-mongodb-strings](u03-mongodb-strings/) |
| U04 | User-Defined Functions (UDF) in MongoDB | [u04-mongodb-udf](u04-mongodb-udf/) |
| U05 | Standard Deviation and Variance | [u05-mongodb-statistics](u05-mongodb-statistics/) |
| U06 | Aggregate Functions in MongoDB | [u06-mongodb-aggregation](u06-mongodb-aggregation/) |
| U07 | Importing JSON Data Using mongoimport (Iris Dataset) | [u07-mongoimport-iris](u07-mongoimport-iris/) |
| U08 | Insert, Search, Update and Manipulate Array Data | [u08-array-data](u08-array-data/) |
| U09 | Replica, Backup and Restore in MongoDB | [u09-replica-backup-restore](u09-replica-backup-restore/) |
| U10 | Neo4j Cluster/Connection, Node Creation and Matching | [u10-neo4j-nodes](u10-neo4j-nodes/) |
| U11 | Neo4j Relationship Creation and Display | [u11-neo4j-relationships](u11-neo4j-relationships/) |
| U12 | Indexing in MongoDB (additional) | [u12-mongodb-indexing](u12-mongodb-indexing/) |

## Run the exercises

- **MySQL 8:** use MySQL Workbench or the mysql CLI. Scripts may create/select the I_MSc_DataScience database. Review DROP statements before running against data you need.
- **MongoDB:** run .js files with mongosh. The import exercise also uses mongoimport; replica-set and backup exercises require suitable local MongoDB configuration.
- **Neo4j:** run .cypher files in Neo4j Browser or cypher-shell.

## Automated checks and artifacts

GitHub Actions checks repository structure and basic script completeness on pushes and can be started manually. It packages all SQL, MongoDB and Cypher exercise files into a downloadable artifact retained for 14 days. These checks are not a substitute for running scripts against MySQL, MongoDB or Neo4j.

See [Actions](https://github.com/Joerakesh/structured_unstructured_lab/actions).

## Source and accuracy

Exercise topics follow the supplied practical record. Scripts are organized by the stated aims; output is not claimed to be executed by a live database in CI. Always validate database-specific behavior against the installed engine version.
