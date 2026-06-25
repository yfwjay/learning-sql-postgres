
### 1. Basic Querying & Data Extraction
* **Selecting Data:** Leveraging `SELECT` to target specific columns and `SELECT *` for full table scans.
* **Aliasing:** Utilizing the `AS` keyword to assign clean, expressive temporary names to columns or computed expressions to enhance readability.
* **Uniqueness:** Filtering duplicate rows using the `DISTINCT` clause.
* **Counting:** Using `COUNT()` to audit dataset size and track non-null attribute distributions.
* **Views:** Using `CREATE VIEW()` to save a query that acts as a virtual table. Thy don't store the data they ensure the data is upto date with the latest database changes.

### 2. Record Filtering & Predicate Logic
* **Comparison Operators:** Standard evaluation tools (`=`, `<>`, `>`, `<`, `>=`, `<=`).
* **Boolean Logic:** Constructing multi-conditional queries using `AND`, `OR`, and `NOT`.
* **Range & Set Filtering:** * `BETWEEN ... AND ...` for inclusive boundary scans.
    * `IN (...)` for matching records against discrete value lists.
* **Pattern Matching (Text Search):** * `LIKE` and `NOT LIKE` for case-sensitive wildcard matching (`%` for zero-or-more characters, `_` for single character placeholders).
    * *PostgreSQL Special:* `ILIKE` for case-insensitive pattern matching.
* **Handling Missing Information:** Evaluating structural absences with `IS NULL` and `IS NOT NULL`.

### 3. Aggregations & Grouped Summaries
* **Vector/Aggregate Functions:** Performing mathematical summaries over column vectors:
    * `SUM()`, `AVG()`, `MIN()`, `MAX()`, and `COUNT()`.
* **Grouped Implementations (`GROUP BY`):** Splitting rows into descriptive buckets based on common categorical values to calculate group-level metrics.
* **ROUNDING OFF (`ROUND`):** After performing some aggregation you may want to round off the final output. The second paramter you specify how many decimal places.
* **Conditional Group Filtering (`HAVING`):** Filtering grouped datasets based on aggregate properties. 
    * *Critical Distinction:* `WHERE` filters individual rows *before* aggregation occurs; `HAVING` filters group summaries *after* the `GROUP BY` clause executes.

### 4. Sorting & Restricting Results
* **Ordering Records:** Sorting result sets using `ORDER BY` in either ascending (`ASC`, default) or descending (`DESC`) sequences.
* **Multi-Column Sorting:** Sequencing data hierarchically by primary and secondary attributes (e.g., `ORDER BY department ASC, salary DESC`).
* **Row Limitation:** Restricting output size to optimize application performance and memory overhead.
    * *Standard/PostgreSQL:* Using `LIMIT n` and optional `OFFSET m` values.