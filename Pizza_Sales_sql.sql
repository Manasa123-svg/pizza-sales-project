
select * from pizza_sales;

--Total revenue

select Round(sum(total_price)::numeric,2) as Total_revenue
from pizza_Sales;

--avg order value

select Round(sum(total_price)::numeric,2)/round(count(distinct order_id)::numeric,2) as avg_order_value
from pizza_sales

--total orders

select count(distinct order_id) as total_orders
from pizza_Sales;

--total pizza sold

 select sum(quantity) as total_pizza_sold
 from pizza_Sales;

 --avg pizza per order

 select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct(order_id)) as decimal(10,2))  as decimal(10,2))
 as average_pizza_per_order
 from pizza_Sales;

 --daily trend for total orders

  select to_char(order_date,'Day') as day_name,
  count(distinct order_id) as total_orders
  from pizza_sales
  group by 1
  order by day_name desc;

  --monthly trend for total_orders

   select to_char(order_date,'Month') AS month_name,
   count(distinct order_id) as total_orders
   from pizza_sales
   group by 1
   order by total_orders desc

   --persentage  sales by pizza category

   select pizza_category,
   cast(sum(total_price) as decimal(10,2)) as total_revenue,
   cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as per_sales_pizza_category
   from pizza_Sales
   group by 1

   --% sales by pizza_size

   select pizza_size,
   cast(sum(total_price) as decimal(10,2)) as toatl_revenue,
   cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as persentage_sales_by_pizza_category
   from pizza_sales
   group by 1


   --Top 5 best sellers by revenue

 select pizza_name,
 sum(total_price) as total_revenue
 from pizza_sales
 group by pizza_name
 order by 2 desc
 limit 5

--Bottom 5 best sellers by revenue

 select pizza_name,
 sum(total_price) as total_revenue
 from pizza_sales
 group by pizza_name
 order by 2 asc
 limit 5

--Top 5 pizzas by  quantity

 select pizza_name,
 sum(quantity) as total_quantity
 from pizza_sales
 group by pizza_name
 order by 2 desc
 limit 5

--bottom 5 pizzas by quantity

 select pizza_name,
 sum(quantity) as total_quantity
 from pizza_sales
 group by pizza_name
 order by 2 asc
 limit 5

--Top 5 pizzas by Total orders

 select pizza_name,
 count(distinct order_id) as total_orders
 from pizza_sales
 group by pizza_name
 order by 2 desc
 limit 5

--Bottom 5 pizzas by Total orders

 select pizza_name,
 count(distinct order_id) as total_orders
 from pizza_sales
 group by pizza_name
 order by 2 
 limit 5
   group by 1
