SUBQUERIES

	-# FROM CLAUSE
	
#1 Rank Customers Based on there total Amount of sales

select 
*,
rank() over(order by total_sales desc)as Customer_rank

from 
	(select 
	customer_id,
	sum(amount) as total_sales
	from Orders
	group by customer_id)

2.fIND THE products that have a price higher than the average price of all products

  
select *
from
	(SELECT
	order_id,
	item,
	amount,
	avg(amount) over() as Avg_amount
	from Orders)
where amount>Avg_amount

-#SELECT CLAUSE
	

1.show order_id,item,amount and total_sales of products from Orders
	
 very Imp Point # in SELECT CLAUSE WE CAN USE ONLY SCALAR SUBQUERYS ONLY
	
select 
	order_id,
	item,
	amount,
	(select count(*) as Total_order from Orders) Total_sales
from Orders;

-Join Clause
 1.show all customer details and total order of each customer
  
  select 
  c.*,
  o.total_order
  From Customers c
  left join
 	(SELECT customer_id,
  	count(*) as total_order
  	from Orders
    group by customer_id) o
  on c.customer_id=o.customer_id

- WHERE CLAUSE
used for Complex filtering logic and make query more flexible and dynamic

1.Find the products that have higher than the average price of all products
	-- it should scalar subquery then only we can use where clause
	
select 
item,
amount,
(select avg(amount) as Avg_amount from Orders) as Avg_orders
from Orders
where amount>(select avg(amount) as Avg_amount from Orders);

--IN opeator
show the details of orders made by customers from  USA
	
select 
* 
from Orders
where customer_id IN
					(select 
                    customer_id
                    from Customers
                    where country="USA")
show the details of orders made by customers not from USA
select 
* 
from Orders
where customer_id NOT IN
					(select 
                    customer_id
                    from Customers
                    where country="USA")	
	
-ANY,ALL opeator
	using ANY  and all we can use subquery of multiple row but in other we can only use scalar subquery
1.Find female employee whose salary is greater than the salaries of any male employee
	
select 
employeeID,
name,
salary
from customer
where gender="F" and salary> any(select salary from customer where gender="M")

2.Find female employee whose salary is greater than the salaries of all male employee

select 
employeeID,
name,
salary
from customer
where gender="F" and salary> all(select salary from customer where gender="M")

Non-Correlated Subquery
A Subquery that can run independently from the Main Query

Correlated SubQuery
A subQuery that relays on values of  main Query




