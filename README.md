Store Sales Dashboard – SQL + Power BI Project
Project Overview
This is an end-to-end Sales Analytics project where I used SQL for data analysis and aggregation and Power BI for interactive dashboard creation.

The goal of this project was to analyze company sales performance across regions and product categories and generate actionable business insights.

Tech Stack

SQL (MySQL) – Data querying & aggregation

Power BI – Dashboard & visualization

DAX – KPI calculations

Data Modeling

Business Intelligence Reporting

Project Workflow
1.Data Analysis Using SQL

Performed data exploration and aggregation using SQL.

Example Queries:

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Orders;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Orders;

-- Sales by Region
SELECT Region, SUM(Sales) AS Sales_By_Region
FROM Orders
GROUP BY Region;

-- Sales by Category
SELECT Category, SUM(Sales) AS Sales_By_Category
FROM Orders
GROUP BY Category;

-- Profit Margin
SELECT 
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM Orders;

These queries were used to validate KPIs before building the dashboard.

2.Dashboard Development in Power BI

Created calculated measures using DAX:

Total Sales = SUM(Orders[Sales])

Total Profit = SUM(Orders[Profit])

Profit Margin = 
DIVIDE(
    SUM(Orders[Profit]),
    SUM(Orders[Sales]),
    0
)

Dashboard Features

Total Sales KPI
Total Profit KPI
Profit Margin %
Sales by Category (Bar Chart)
Sales by Region (Bar Chart)
Sales Trend by Year (Line Chart)
Interactive Filters (Region & Category)

Dashboard Preview

Key Business Insights
Technology category generates the highest revenue.
West region leads overall sales performance.
Profit margin stands at 12.56%.
Sales show a consistent upward trend over the years.

Business Problem Solved

The objective was to create a centralized performance dashboard that enables:
Monitoring overall revenue & profitability
Identifying high-performing regions
Comparing category-wise sales
Supporting data-driven decision making

Repository Structure
SQL_Sales_Project.sql
Store_Sales_analysis.csv
store_sales_dashboard.pbix
dashboard_preview.png
README.md

About Me

Somya
Aspiring Data Analyst

Skilled in: SQL | Power BI | DAX | Data Analysis
LinkedIn: [www.linkedin.com/in/somya-singh-4947261bb](url)
GitHub: [(https://github.com/Somya-data2decode)](url)
