CREATE DATABASE sales_analytics;
USE sales_analytics;
SELECT * FROM store_sales_analysis LIMIT 10;
SHOW TABLES;
DESCRIBE store_sales_analysis;
CREATE TABLE store_sales_clean AS
SELECT * FROM store_sales_analysis;

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE store_sales_clean
ADD order_date_new DATE,
ADD ship_date_new DATE;
UPDATE store_sales_clean
SET 
    order_date_new = STR_TO_DATE(order_date, '%d-%m-%Y'),
    ship_date_new  = STR_TO_DATE(ship_date, '%d-%m-%Y');

SELECT 
    order_date,
    order_date_new,
    ship_date,
    ship_date_new
FROM store_sales_clean
LIMIT 10;
ALTER TABLE store_sales_clean
ADD order_year INT,
ADD order_month INT,
ADD order_month_name VARCHAR(15),
ADD order_quarter VARCHAR(2);
UPDATE store_sales_clean
SET
    order_year = YEAR(order_date_new),
    order_month = MONTH(order_date_new),
    order_month_name = MONTHNAME(order_date_new),
    order_quarter = CONCAT('Q', QUARTER(order_date_new));
    SELECT
    order_date_new,
    order_year,
    order_month,
    order_month_name,
    order_quarter
FROM store_sales_clean
LIMIT 10;
  SELECT
    order_year,
    ROUND(SUM(sales), 2) AS total_sales
FROM store_sales_clean
GROUP BY order_year
ORDER BY order_year;
  SELECT
    order_month_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM store_sales_clean
GROUP BY order_month_name, order_month
ORDER BY order_month;
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM store_sales_clean
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales
FROM store_sales_clean
GROUP BY region
ORDER BY total_sales DESC;
SELECT
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage
FROM store_sales_clean;

Profit Margin = DIVIDE(SUM(Orders[Profit]), SUM(Orders[Sales]), 0);
    
    
    
    
    
    
    
    
    
    
    
    
    
    