-- =========================================
-- File: analysis_queries.sql
-- Project: SQL Business Analysis
-- Description: Business insights using SQL
-- =========================================

USE business_analysis;

-- =========================================
-- 1. TOTAL SALES (REVENUE)
-- =========================================
SELECT 
    SUM(sales) AS total_revenue
FROM orders;

-- =========================================
-- 2. TOTAL PROFIT
-- =========================================
SELECT 
    SUM(profit) AS total_profit
FROM orders;

-- =========================================
-- 3. PROFIT MARGIN %
-- =========================================
SELECT 
    SUM(profit) / SUM(sales) * 100 AS profit_margin_percent
FROM orders;

-- =========================================
-- 4. TOP CUSTOMERS
-- =========================================
SELECT 
    customer_name,
    SUM(sales) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC;

-- =========================================
-- 5. TOP PRODUCTS BY SALES
-- =========================================
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC;

-- =========================================
-- 6. PRODUCTS WITH LOSS (IMPORTANT 🚨)
-- =========================================
SELECT 
    product_name,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit;

-- =========================================
-- 7. SALES BY REGION
-- =========================================
SELECT 
    region,
    SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

-- =========================================
-- 8. MONTHLY SALES TREND
-- =========================================
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;

-- =========================================
-- 9. CUSTOMER SEGMENTATION (HIGH VALUE)
-- =========================================
SELECT 
    customer_name,
    SUM(sales) AS total_spent,
    CASE 
        WHEN SUM(sales) > 3000 THEN 'High Value'
        WHEN SUM(sales) > 1500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC;

-- =========================================
-- 10. RUNNING TOTAL SALES (ADVANCED 🔥)
-- =========================================
SELECT 
    order_date,
    SUM(sales) OVER (ORDER BY order_date) AS running_total_sales
FROM orders;