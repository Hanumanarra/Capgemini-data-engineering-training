Hands-on Ingestion Tasks

1. Read a CSV file from /samples

from pyspark.sql import SparkSession
from pyspark.sql.functions import sum,col,avg,count

spark = SparkSession.builder.appName('Spark Playground').getOrCreate()

df = spark.read.format('csv').option('header', 'true').load('/samples/customers.csv')
df.show(5)
display(df)

2. Inspect schema using show() and printSchema()
df.show(5)
df.printSchema()

3.. Identify missing values ,clean data with dropna() or fillna()
clean_df=df.dropna()

4.filter invalid records
filtered_df=clean_df.filter(col("customer_id").isNotNull()

5.Read Json and parquet sample files
df_json = spark.read.json("/samples/products.json")

df_parquet = spark.read.parquet("/samples/titanic.parquet")


df_parquet.show(10)

