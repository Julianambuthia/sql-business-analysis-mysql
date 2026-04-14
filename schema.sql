-- =========================================
-- File: schema.sql
-- Project: SQL Business Analysis
-- Description: Create database and orders table
-- =========================================

-- Create database
CREATE DATABASE IF NOT EXISTS business_analysis;

-- Use database
USE business_analysis;

-- Create orders table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    region VARCHAR(50),
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(50),
    sales DECIMAL(10,2) NOT NULL,
    profit DECIMAL(10,2),
    quantity INT
);

-- Verify it works testing Testing
SHOW DATABASES;

-- use the business analysis data base  
USE business_analysis;
-- show the tables in the business analysis database
SHOW TABLES;

SELECT * FROM orders;