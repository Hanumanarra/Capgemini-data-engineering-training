from pyspark.sql import SparkSession
from pyspark.sql.functions import sum,col,avg,count

spark = SparkSession.builder.appName('Spark Playground').getOrCreate()

data = [
(1, "Ravi", "Hyderabad", 25),
(2, None, "Chennai", 32),
(None, "Arun", "Hyderabad", 28),
(4, "Meena", None, 30),
(4, "Meena", None, 30),
(5, "John", "Bangalore", -5)
]
columns=["customer_id","name","city","age"]
df=spark.createDataFrame(data,columns)

1.clean Data (Remove Null Keys)
df=df.filter(col("customer_id").isNotNull())
df.show()

2.Clean Data (Remove or handling missing Values)
df=df.fillna({"name":"unknown","city":"unknown"})

3.clean Data(Remove Duplicates)
df = df.dropDuplicates()

4.clean Data(Filter Invalid age)
df=df.filter(col("age")>0)

5. Validate cleaning (row counts before and after)
after = df.count()
print(f"After  cleaning: {after} rows")
print(f"Rows removed: {before - after}")
df.show()

6.Aggregate -customer per city
df.groupBy("city") \
  .agg(count("customer_id").alias("customer_count")) \
  .orderBy(col("customer_count").desc()) \
  .show()
