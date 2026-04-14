-- =========================================
-- File: sample_data.sql
-- Project: SQL Business Analysis
-- Description: Insert sample business transactions
-- =========================================

USE business_analysis;

INSERT INTO orders (order_date, customer_name, region, product_name, category, sales, profit, quantity)
VALUES
('2025-01-01','John Smith','West','Laptop','Technology',1200,300,1),
('2025-01-02','Emma Johnson','East','Phone','Technology',900,200,1),
('2025-01-03','Michael Lee','South','Desk','Furniture',450,-60,1),
('2025-01-04','Sarah Kim','West','Chair','Furniture',200,30,2),
('2025-01-05','David Park','North','Monitor','Technology',600,120,1),
('2025-01-06','Anna Brown','East','Keyboard','Accessories',80,15,1),
('2025-01-07','John Smith','West','Mouse','Accessories',50,10,2),
('2025-01-08','Emma Johnson','East','Laptop','Technology',1300,350,1),
('2025-01-09','Michael Lee','South','Table','Furniture',500,-80,1),
('2025-01-10','Sarah Kim','West','Phone','Technology',950,220,1),
('2025-01-11','David Park','North','Chair','Furniture',300,40,1),
('2025-01-12','Anna Brown','East','Monitor','Technology',700,140,1),
('2025-01-13','John Smith','West','Desk','Furniture',400,-50,1),
('2025-01-14','Emma Johnson','East','Keyboard','Accessories',90,20,1),
('2025-01-15','Michael Lee','South','Laptop','Technology',1400,400,1);

-- Test the data
SELECT * FROM orders;

SELECT COUNT(*) FROM orders;