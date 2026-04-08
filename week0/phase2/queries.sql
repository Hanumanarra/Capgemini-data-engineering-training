--create customer table
CREATE TABLE customer (
  customer_id PRIMARY KEY,
  customer_name varchar(50),
  city varchar(40) ,
  age int
);

-- insert values
INSERT INTO customer VALUES (1, 'Clark', 'vijaywada',25);
INSERT INTO customer VALUES (2, 'Dave', 'Addanki',22);
INSERT INTO customer VALUES (3, 'Ava', 'guntur',23);
INSERT INTO customer VALUES(4,'Karthik','Ongole',24);

-- create orders table
CREATE TABLE orders(
customer_id int ,
amount int
)
  --insert values
INSERT INTO orders(customer_id,amount) VALUES
(1,5000),
(2,7000),
(3,8000),
(4,7000),
(1,6000)

--Total order amount for each customer
select c.customer_name, sum(o.amount)as total_amount
from Customers c
join Orders o
on c.customer_id==o.customer_id
group by c._name
Order by total_amount

--Top 3 customers by total spend
select c.customer_name, sum(o.amount)as total_amount
from Customers c
join Orders o
on c.customer_id==o.customer_id
group by c._name
Order by total_amount desc limit 3

--Customers with no orders
select customer_name
from customers
where customer_id not in (select customer_id from order)

--City Wise total revenue
  select c.country ,sum(o.amount) as country_wise_revenue
  from Customers c
  join Orders o
  on c.customer_id = o.customer_id
  group by country
  order by country_wise_revenue

--Average order per customer
select c.first_name ,AVG(o.amount) as avg_per_customer
  from Customers c
  join Orders o
  on c.customer_id = o.customer_id
  group by first_name
  order by avg_per_customer

  
--Customer with more than one order
  select c.first_name ,count(o.order_id)as n_order
  from Customers c
  join Orders o
  on c.customer_id = o.customer_id
  group by c.first_name
  having n_order>1

  
--Sort customers by total spend descending
select c.first_name ,sum(o.amount)as total_spend
  from Customers c
  join Orders o
  on c.customer_id = o.customer_id
  group by c.first_name
  order by total_spend desc
