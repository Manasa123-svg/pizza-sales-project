

create database pizza_sales;

create table pizza_sale(
pizza_id int,
order_id int,
pizza_name_id varchar(50),
quantity int,
order_date date,
order_time time,
unit_price float,
total_price float,
pizza_size varchar(50),
pizza_category varchar(50),
pizza_ingredients varchar(200),
pizza_name varchar(50)
)

select * from pizza_sale;

--Total Revenue

select cast(sum(total_price) as int) as Total_Revenue from pizza_sale;

--Average order value

select cast(cast(sum(total_price) as decimal(10,2))/cast(count(order_id) as decimal(10,2)) as decimal(10,2)) as Average_order_value 
from pizza_sale

--Total pizza sold

select sum(quantity) as Total_pizza_sold
from pizza_sale

--Total Orders

select count(distinct (order_id)) as total_orders
from pizza_Sale;

--Average pizza per order

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct(order_id)) as decimal(10,2))  as decimal(10,2))
as average_pizza_per_order
from pizza_Sale;


--Daily trend for total orders

 select * from pizza_Sale;

 select to_char(order_date ,'DAY') AS Day_name,
 count(distinct(order_id)) as total_orders
 from pizza_Sale
 group by 1
 
 

--Monthly Trend for total orders

SELECT TO_CHAR(order_date,'Month') as month,
count(distinct(order_id)) as total_orders
from pizza_Sale
group by 1

--Percentage of sales by pizza category

select pizza_category,
cast(sum(total_price) as decimal(10,2)) as total_revenue,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sale) as decimal(10,2)) as per_sales_pizza_category
from pizza_Sale
group by 1

--Percentage of sales by pizza size

select pizza_size,
sum(total_price) as total_revenue,
sum(total_price)*100/(select sum(total_price) from pizza_sale) as per_sales_pizza_category
from pizza_sale
group by 1

--Top 5 best sellers by revenue

 select pizza_name,
 sum(total_price) as total_revenue
 from pizza_sale
 group by pizza_name
 order by 2 desc
 limit 5

--Bottom 5 best sellers by revenue

 select pizza_name,
 sum(total_price) as total_revenue
 from pizza_sale
 group by pizza_name
 order by 2 asc
 limit 5

--Top 5 pizzas by  quantity

 select pizza_name,
 sum(quantity) as total_quantity
 from pizza_sale
 group by pizza_name
 order by 2 desc
 limit 5

--bottom 5 pizzas by quantity

 select pizza_name,
 sum(quantity) as total_quantity
 from pizza_sale
 group by pizza_name
 order by 2 asc
 limit 5

--Top 5 pizzas by Total orders

 select pizza_name,
 count(distinct order_id) as total_orders
 from pizza_sale
 group by pizza_name
 order by 2 desc
 limit 5

--Bottom 5 pizzas by Total orders

 select pizza_name,
 count(distinct order_id) as total_orders
 from pizza_sale
 group by pizza_name
 order by 2 
 limit 5

