# Initialize Spark session
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('Spark Playground').getOrCreate()

customers_data = [
    (1, "Ravi", "Hyderabad", 25),
    (2, "Sita", "Chennai", 32),
    (3, "Arun", "Hyderabad", 28),
    (4, "Meena", "Bengaluru", 35),
    (5, "Kiran", "Chennai", 22)
]

orders_data = [
    (101, 1, 2500, "2026-03-01"),
    (102, 2, 1800, "2026-03-02"),
    (103, 1, 3200, "2026-03-03"),
    (104, 3, 1500, "2026-03-04"),
    (105, 5, 2800, "2026-03-05")
]
customers = spark.createDataFrame(customers_data, ["customer_id","customer_name","city","age"])
orders = spark.createDataFrame(orders_data, ["order_id","customer_id","amount","order_date"])

1.Total order amount for each customer
 
customer_amt = customers.join(orders, on="customer_id") \
                        .groupBy(customers["first_name"]) \
                        .agg(sum(orders["total_amount"]).alias("total_amount"))
customer_amt.show()

2. top3 customer by totalspend
customer_amt=customers.join(orders,on="customer_id").groupBy(customers["first_name"]).agg(sum(orders["total_amount"]).alias("total_amount")).orderBy(col("total_amount").desc()).limit(3)
customer_amt.show()

3.Customers with no orders
  customer_amt=customers.join(orders,on="customer_id",how="left_anti")
customer_amt.show()

4.City wise total revenue
  customer_amt=customers.join(orders,on="customer_id").groupBy(customers["city"]).agg(sum(orders["total_amount"]))
customer_amt.show()

5.Average order amount per customer
  
customer_amt=customers.join(orders,on="customer_id").groupBy(customers["first_name"]).agg(avg(orders["total_amount"]))
customer_amt.show()
  
6.Customer with more than one order
  customer_amt=customers.join(orders,on="customer_id").groupBy(customers["first_name"])\
.agg(count(orders["sale_id"]).alias("total_order")).filter(col("total_order")>1)

customer_amt.show()
              
7.Sort Customers with total Spend descending
  customer_amt=customers.join(orders,on="customer_id").groupBy(customers["first_name"])\
.agg(sum(orders["total_amount"]).alias("total_amount")).orderBy(col("total_amount").desc())

customer_amt.show()
