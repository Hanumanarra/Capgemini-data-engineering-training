🚀 PySpark ETL Pipeline – Data Engineering Practice
📌 Overview

This project demonstrates a complete ETL (Extract, Transform, Load) pipeline using PySpark.
It focuses on real-world data engineering tasks such as data ingestion, cleaning, transformation, and aggregation using sample datasets.

The implementation follows standard ETL principles:

Extract → Read data from CSV, JSON, Parquet
Transform → Clean, filter, join, and aggregate data
Load → Display processed results

🧠 Concepts Covered

PySpark DataFrame operations
Handling missing values (fillna, dropna)
Filtering invalid data
Removing duplicates
Aggregations (groupBy, count, sum)
Joins between datasets
Building end-to-end ETL pipeline

📂 Datasets Used

customers.csv
sales.csv
products.json
titanic.parquet

(All datasets are loaded from /samples directory)

🔧 Tech Stack
Python 🐍
PySpark ⚡
Spark Playground Environment

🔄 ETL Workflow

1️⃣ Data Ingestion

Read CSV files using Spark
Load JSON and Parquet data
Inspect schema using printSchema()

2️⃣ Data Cleaning

Remove null keys
Handle missing values using fillna()
Remove duplicates
Filter invalid records (e.g., negative age)

3️⃣ Data Transformation

Perform joins between customers and sales
Create new columns (customer full name)
Convert data types where required

4️⃣ Data Aggregation

Customer count per city
Daily sales calculation
City-wise revenue
Repeat customer identification
Customer spending analysis
📊 Business Use Cases Implemented
✅ Daily Sales Calculation

Aggregated total sales amount per day.

✅ City-wise Revenue

Calculated revenue generated from each city.

✅ Repeat Customers

Identified customers with more than one order.

✅ Highest Spending Customers

Computed total spending per customer.

✅ Final Reporting Table

Created a summary table with:

Customer Name
City
Total Spend
Order Count

🧪 Data Cleaning Example

Removed null customer_id
Replaced missing values with "unknown"
Filtered invalid ages (age > 0)
Dropped duplicate records


📈 Key Learnings

Learned how to build scalable ETL pipelines using PySpark
Understood real-world data cleaning challenges
Practiced transforming raw data into meaningful insights
Improved understanding of Spark DataFrame APIs


This project is based on PySpark practice exercises from Spark Playground:



🚀 How to Run
Start Spark session
Load datasets from /samples
Execute transformation scripts
View results using show() or display()


Hanuma Narra
B.Tech Student | Aspiring Data Engineer
