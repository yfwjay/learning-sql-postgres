
A comprehensive repository containing structured notes, practical queries, and conceptual breakdowns developed during my journey through DataCamp's SQL tracks (**Introduction to SQL**, **Intermediate SQL**, and **Joining Data in SQL**), with extended implementations using **PostgreSQL**.

---

## 📌 Repository Overview

This repository serves as an open-source learning log and technical reference for mastering Relational Database Management Systems (RDBMS) and structured querying. It transitions from foundational data selection to complex relational algebra, multi-table joins, and performance-optimized nested subqueries. 

All concepts are mapped from standard ANSI SQL and explicitly adapted for **PostgreSQL** syntax and behavioral nuances.

---

## 🗺️ Curriculum Blueprint & Core Concepts

### 1. Relational Databases & Architectural Foundations
* **The Relational Model:** Understanding tables (relations), rows (tuples), and columns (attributes).
* **Data Integrity & Constraints:** * `PRIMARY KEY` to enforce entity integrity (uniqueness and non-nullability).
    * `FOREIGN KEY` to establish referential integrity across relational schemas.
    * Data types, handling `NULL` values, and structural validation.

### 2. Basic Querying & Data Extraction
* **Selecting Data:** Leveraging `SELECT` to target specific columns and `SELECT *` for full table scans.
* **Aliasing:** Utilizing the `AS` keyword to assign clean, expressive temporary names to columns or computed expressions to enhance readability.
* **Uniqueness:** Filtering duplicate rows using the `DISTINCT` clause.
* **Counting:** Using `COUNT()` to audit dataset size and track non-null attribute distributions.

### 3. Record Filtering & Predicate Logic
* **Comparison Operators:** Standard evaluation tools (`=`, `<>`, `>`, `<`, `>=`, `<=`).
* **Boolean Logic:** Constructing multi-conditional queries using `AND`, `OR`, and `NOT`.
* **Range & Set Filtering:** * `BETWEEN ... AND ...` for inclusive boundary scans.
    * `IN (...)` for matching records against discrete value lists.
* **Pattern Matching (Text Search):** * `LIKE` and `NOT LIKE` for case-sensitive wildcard matching (`%` for zero-or-more characters, `_` for single character placeholders).
    * *PostgreSQL Special:* `ILIKE` for case-insensitive pattern matching.
* **Handling Missing Information:** Evaluating structural absences with `IS NULL` and `IS NOT NULL`.

### 4. Sorting & Restricting Results
* **Ordering Records:** Sorting result sets using `ORDER BY` in either ascending (`ASC`, default) or descending (`DESC`) sequences.
* **Multi-Column Sorting:** Sequencing data hierarchically by primary and secondary attributes (e.g., `ORDER BY department ASC, salary DESC`).
* **Row Limitation:** Restricting output size to optimize application performance and memory overhead.
    * *Standard/PostgreSQL:* Using `LIMIT n` and optional `OFFSET m` values.

### 5. Aggregations & Grouped Summaries
* **Vector/Aggregate Functions:** Performing mathematical summaries over column vectors:
    * `SUM()`, `AVG()`, `MIN()`, `MAX()`, and `COUNT()`.
* **Grouped Implementations (`GROUP BY`):** Splitting rows into descriptive buckets based on common categorical values to calculate group-level metrics.
* **Conditional Group Filtering (`HAVING`):** Filtering grouped datasets based on aggregate properties. 
    * *Critical Distinction:* `WHERE` filters individual rows *before* aggregation occurs; `HAVING` filters group summaries *after* the `GROUP BY` clause executes.

### 6. Relational Joins & Set Theory
Combining discrete tables horizontally by mapping shared keys and intersection points.

* **The Types of Joins:**
    * `INNER JOIN`: Returns rows only when the join predicate matches in both tables.
    * `LEFT JOIN` (Left Outer): Fetches all records from the left table and matching rows from the right; appends `NULL` values where no match exists.
    * `RIGHT JOIN` (Right Outer): Fetches all records from the right table and matching rows from the left; appends `NULL` where data is missing.
    * `FULL JOIN` (Full Outer): Returns all records when there is a match in either left or right table records, filling missing values with `NULL`.
    * `CROSS JOIN`: Generates a Cartesian product, pairing every single row of the first table with every single row of the second.
    * **Self Joins:** Joining a table to itself to evaluate hierarchical or sequential relationships within the same entity (e.g., matching employees to managers).

**Set Theory on Joins (Venn Diagram Relationships):**
    ```
       INNER JOIN            LEFT JOIN            RIGHT JOIN           FULL JOIN
         [ A ∩ B ]          [ A (A ∩ B) ]        [ (A ∩ B) B ]        [ A ∪ B ]
         Matches Only        Left + Match        Right + Match       All Records
    ```
* **Set Operators (Vertical Combinations):**
    * `UNION`: Combines result sets vertically, eliminating duplicate rows.
    * `UNION ALL`: Combines result sets vertically while preserving all duplicate rows (faster execution due to no deduplication overhead).
    * `INTERSECT`: Returns only distinct rows present in *both* query result sets.
    * `EXCEPT` (*PostgreSQL*) / `MINUS`: Returns distinct rows from the first query that are entirely absent from the second query.

### 7. Subqueries & Nested Query Architecture
Writing modular, nested queries where an inner statement passes its output matrix up to a parent query.

* **Subqueries in the `WHERE` Clause:** Dynamic predicate filtering where single values or arrays are evaluated at runtime (e.g., `WHERE salary > (SELECT AVG(salary) FROM employees)`).
* **Subqueries in the `SELECT` Clause:** Computing inline scalar values or running totals per row of the primary result set.
* **Subqueries in the `FROM` Clause (Derived Tables):** Treating a structured query output as a temporary table that can be queried, filtered, or joined just like a base physical table (requires an alias).
* **Correlated Subqueries:** Advanced nested statements where the inner query explicitly references a column from the outer query, executing iteratively once for every row processed by the outer container.

---





## 📂 Repository Structure
