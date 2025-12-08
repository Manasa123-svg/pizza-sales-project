
# End-to-End Pizza Sales Analysis 

**Project Overview:** End-to-End Pizza Sales Analysis

This project demonstrates a complete data analysis workflow, starting from raw data exploration and cleaning, moving to database querying, and culminating in the creation of interactive business intelligence dashboards. The goal is to transform transactional pizza sales data into actionable insights that can drive business strategy.

# Project Goal

To analyze a full year of pizza sales data to identify key performance trends, understand customer preferences, and determine the best and worst-selling products. The final output is a set of dynamic dashboards that allow stakeholders to easily explore the data and make informed decisions regarding marketing, inventory, and menu optimization.

# Tools Used

**Python:** Data Exploration, Cleaning, and Preparation (Python)

**SQL:**  Data Querying and Aggregation

**Power Bi,Excel:** Interactive Dashboarding & Visualization

# Phase 1: Data Exploration, Cleaning, and Preparation (Python)

The project begins in a Jupyter Notebook using Python, which is ideal for initial data wrangling and exploratory analysis.

# 1.1. Data Loading & Inspection:

The pizza_sales.csv dataset is loaded into a pandas DataFrame.

Initial data quality checks are performed using .info(), .isnull().sum(), and .duplicated().sum() to confirm that the dataset has 48,620 rows, no missing values, and no duplicate entries.

# 1.2. Data Cleaning & Transformation:

Standardization: The pizza_size column is cleaned by replacing abbreviations (e.g., 'M') with full names ('Medium') for better readability in reports.
Date Formatting: The order_date column is converted to a proper datetime format.

# 1.3. Feature Engineering:

New columns order_day and order_month are created from the order_date to enable trend analysis by day of the week and month.

# 1.4. Database Loading:

Using the SQLAlchemy library, a connection is established to a PostgreSQL database.
The cleaned and prepared DataFrame is loaded into a new table named pizza_sales, making the data ready for robust SQL querying.

# Phase 2:Data Querying and Aggregation (SQL)

With the clean data residing in a PostgreSQL database, SQL is used to perform all the necessary aggregations and calculations. This is the core logic engine that feeds the final dashboards.

**2.1. KPI Calculation:** Simple, efficient queries are written to calculate the main business metrics:

Total Revenue, Total Pizzas Sold, Total Orders, Average Order Value, and Average Pizzas Per Order.

**2.2. Trend Analysis:**

Queries group data by the extracted day_name and month_name to analyze daily and monthly order trends.

**2.3. Performance Analysis:**

Queries calculate the percentage of total sales contributed by each pizza_category and pizza_size.

**2.4. Product Ranking:**

A series of GROUP BY, ORDER BY, and LIMIT 5 queries are used to identify the Top 5 and Bottom 5 best- and worst-selling pizzas by three key metrics: Total Revenue, Total Quantity, and Total Orders.

# Phase 3:Interactive Dashboarding & Visualization

The aggregated data and insights derived from the SQL queries are visualized using two leading BI tools: Power BI and Excel. Both dashboards serve the same purpose but showcase different implementation methods.

**3.1. Data Connection:**

Both Power BI and Excel (via Power Query) connect directly to the pizza_sales table in the PostgreSQL database.

**3.2. Dashboard Creation (Power BI & Excel):**

**KPI Cards:** The key metrics (Total Revenue, Avg Order Value, etc.) are displayed prominently at the top of the dashboards using "Card" visuals.

Interactive Slicers: Slicers for pizza_category and a timeline slicer for order_date are added, allowing users to filter the entire report dynamically.

**Charts & Visuals:**

**Bar/Column Charts** are used to show daily and monthly order trends.

**Donut/Pie Charts** effectively display the percentage breakdown of sales by category and size.

**Horizontal Bar Charts** are used to rank the Top 5 and Bottom 5 pizzas, making comparisons easy and intuitive.

**Multi-Page Report:** Both dashboards use a two-page navigation structure:

**Home Page:** Provides a high-level overview of sales performance and time-based trends.

**Best and Worst Seller Page:** Focuses on detailed product analysis to highlight top and bottom performers.

# Key Insights & Business Recommendations

The analysis from all three tools converges to provide the following actionable insights:

# Peak Sales Periods:

**Daily:** Sales are highest on Fridays and Saturdays, suggesting a need for increased staffing and inventory on weekends.

**Monthly:** July and January are the busiest months, which could guide marketing campaigns and promotional planning.

# Product Performance:

**Top Performers:** The Thai Chicken Pizza is the highest revenue generator, while the Classic Deluxe Pizza is the most frequently ordered and sold in the highest quantity. These are key products to promote.

**Worst Performer:** The Brie Carre Pizza consistently ranks as the worst-selling pizza across all metrics (revenue, quantity, and orders). The business should consider discontinuing this item.

# Customer Preferences:

**Category:** The Classic category is the most popular, contributing the highest share of sales and orders.

**Size:** Large size pizzas are the most significant contributor to total sales, indicating an opportunity for upselling strategies.

https://github.com/Manasa123-svg/pizza-sales-project/blob/main/pizza_sales%20home%20Dashboard%20power%20bi.png

