CREATE TABLE customer (
  customer_id PRIMARY KEY,
  customer_name varchar(50),
  city varchar(40) ,
  age int
);

-- insert
INSERT INTO customer VALUES (1, 'Clark', 'vijaywada',25);
INSERT INTO customer VALUES (2, 'Dave', 'Addanki',22);
INSERT INTO customer VALUES (3, 'Ava', 'guntur',23);
INSERT INTO customer VALUES(4,'Karthik','Ongole',24);

-- fetch 
CREATE TABLE orders(
customer_id int ,
amount int
)
INSERT INTO orders(customer_id,amount) VALUES
(1,5000),
(2,7000),
(3,8000),
(4,7000),
(1,6000)
