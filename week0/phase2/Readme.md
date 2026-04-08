🔷 PySpark Data Engineering — Project Report

📌 Objective
Bridge the gap between basic SQL-to-PySpark syntax and real-world data engineering tasks by working with Spark Playground sample datasets, performing data cleaning, and solving realistic joins and aggregations.

📋 Problem Statements
#Task1Clean data by removing rows with missing customer IDs2Calculate total order amount for each customer3Identify top 3 customers based on total spending4Find customers who have NOT placed any orders5Calculate total revenue city-wise6Find average order amount per customer7Identify customers with more than one order8Sort customers based on total spending (descending)

🗃️ Dataset Details
FieldInfoSourceSpark PlaygroundTables Usedcustomers, orderscustomers.csvCustomer IDs, names, city, purchase historysales.csvTransactions with sale ID, amount, customer ID

🔄 Approach
Step 1 — Data Exploration

Loaded both customers and orders datasets
Identified null values and mismatched rows
Applied dropna() on customer_id to clean data

Step 2 — SQL Queries

Wrote SQL queries for all 8 problem statements
Used JOIN, GROUP BY, ORDER BY, HAVING, WHERE

Step 3 — PySpark Conversion

Converted all SQL queries into PySpark DataFrame API
Used left_anti join for customers with no orders
Applied filter(), groupBy(), agg(), orderBy()


⚙️ Key Transformations
FunctionPurposedropna()Remove rows with null customer IDsjoin()Combine customers and orders datagroupBy()Group data for aggregationagg()Calculate sum(), avg(), count()filter()Apply conditions on grouped dataorderBy()Sort results ascending/descendinglimit()Restrict output to top N rowsleft_antiFind customers with NO matching orders

📊 Output / Results
#QueryResult1Total spending per customerAggregated amount per customer2Data cleaningRemoved null customer_id rows3Top 3 customersHighest spending customers4Customers with no ordersIdentified using left_anti join5City-wise revenueTotal revenue grouped by city6Average order valueAvg amount per customer7Customers with 1+ ordersFiltered using count > 18Sorted by total spendDescending order result

⚠️ Challenges Faced

Converting SQL aggregations into PySpark .agg() syntax
Using groupBy() correctly after joins
Understanding difference between left, left_anti, left_semi joins
Handling column name conflicts after joining two DataFrames


💡 Learnings

How to load and clean multiple datasets in PySpark
How joins and aggregations are applied in PySpark DataFrame API
Same query can be written in 3 ways — SQL, DataFrame API, Spark SQL
left_anti is a cleaner alternative to LEFT JOIN + isNull() filter
Always import functions from pyspark.sql.functions


📁 Files in This Folder
📂 Project Folder
 ├── 📄 phase2_problem_statement.pdf   → Problem description
 ├── 📄 Sql_Queries.sql                → All SQL implementations
 ├── 📄 pyspark_code.py                → All PySpark implementations
 └── 📂 outputs/                       → Query result screenshots
