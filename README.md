# pizza sales project 

**Project Summary:** 

This project aimed to analyze pizza sales performance to uncover key business insights using SQL, Python, Excel, and Power BI. The process involved extracting, cleaning, and analyzing sales data to evaluate revenue trends, product performance, and customer purchase behavior.

Using SQL, essential KPIs such as total revenue, total pizzas sold, average order value, and best/worst-selling pizzas were derived. Python (Pandas, NumPy, Matplotlib, Seaborn) was used for exploratory data analysis (EDA) and visualization to identify sales patterns by date, category, and size. In Excel, pivot tables and charts were created to summarize category-wise and monthly sales, while Power BI dashboards visualized KPIs and performance insights interactively.

**Tools & Technologies Used**

SQL – PostgreSQL data extraction, transformation,and quering solving business problems

Python – Pandas, NumPy, Matplotlib, Seaborn,EDA

Power BI – DAX, Interactive Dashboards

Excel – Pivot Tables, Charts, and Slicers,Interactive Dashboards

**SQL Analysis**

Created and managed the pizza_sales database and table structure.

**Performed key business queries:**

**Total Revenue:** ₹8,17,860

**Average Order Value:** ₹38.31

**Total Pizzas Sold:** 49,574

**Total Orders:** 21,350

**Average Pizzas per Order:** 2.32

. Identified Top 5 and Bottom 5 pizzas by revenue, quantity, and total orders.

. Generated daily and monthly order trends, and category/size-wise sales contribution.

# Python (EDA)

. Conducted Exploratory Data Analysis (EDA) on pizza sales data.

. Cleaned and transformed data (handled null values, duplicates, date formats).

**Visualized insights using Matplotlib and Seaborn:**

Daily and monthly sales trends.

Category and size contribution to revenue.

Top-performing pizzas based on sales and orders.

**Derived insights such as:**

Friday and Saturday had the highest orders.

July and January were peak months.

Large-sized pizzas generated the maximum sales.

# Power BI (DAX & Dashboard)

Built an interactive Power BI dashboard with dynamic filters for pizza category and date range.

**Created DAX measures:**

Total Revenue = SUM(pizza_sales[total_price])

Average Order Value = [Total Revenue] / DISTINCTCOUNT(pizza_sales[order_id])

Total Pizzas Sold = SUM(pizza_sales[quantity])

Total Orders = DISTINCTCOUNT(pizza_sales[order_id])

Avg Pizzas per Order = [Total Pizzas Sold] / [Total Orders]

# Developed visual reports:

Top/Bottom 5 Sellers by Revenue, Quantity, and Orders.

Daily and Monthly Trends for Total Orders.

Sales Breakdown by Category and Size.

# Insights:

Classic Deluxe pizza was the top in orders and quantity.

Thai Chicken pizza generated the highest revenue.

Brief Carre pizza performed the worst across all metrics.

# Excel Dashboard

Built a dynamic dashboard using pivot tables, slicers, and charts.

Displayed KPIs: Total Revenue, Orders, Average Value, and Total Quantity Sold.

Included bar charts for top/bottom 5 pizzas and trend charts for daily/monthly orders.

Used conditional formatting for highlighting best and worst performers.

# Key Insights

Classic pizzas contributed the most to total orders and sales.

Large-sized pizzas accounted for nearly 46% of total revenue.

Weekends (Friday & Saturday) saw the highest sales volumes.

Brief Carre pizza was consistently underperforming across metrics.

# Project Outcome

This analysis provided a clear understanding of:

Customer buying behavior over time.

Sales performance by category, size, and product.

Data-driven recommendations to optimize menu and sales strategy.

