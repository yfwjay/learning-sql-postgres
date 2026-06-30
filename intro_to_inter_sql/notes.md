
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

### 5. Relational Joins & Set Theory
Combining discrete tables horizontally by mapping shared keys and intersection points.

* **The Types of Joins:**
    * `INNER JOIN`: Returns rows only when the join predicate matches in both tables.
    * `LEFT JOIN` (Left Outer): Fetches all records from the left table and matching rows from the right; appends `NULL` values where no match exists.
    * `RIGHT JOIN` (Right Outer): Fetches all records from the right table and matching rows from the left; appends `NULL` where data is missing.
    * `FULL JOIN` (Full Outer): Returns all records when there is a match in either left or right table records, filling missing values with `NULL`.
    * `CROSS JOIN`: Generates a Cartesian product, pairing every single row of the first table with every single row of the second.
    * **Self Joins:** Joining a table to itself to evaluate hierarchical or sequential relationships within the same entity (e.g., matching employees to managers).

### 6. Set Operators (Vertical Combinations):

* **The different set Operations:**

    * `UNION`: Combines result sets vertically, eliminating duplicate rows.
    * `UNION ALL`: Combines result sets vertically while preserving all duplicate rows (faster execution due to no deduplication overhead).
    * `INTERSECT`: Returns only distinct rows present in *both* query result sets.
    * `EXCEPT` (*PostgreSQL*) / `MINUS`: Returns distinct rows from the first query that are entirely absent from the second query.