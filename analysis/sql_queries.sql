-- SQL Queries for Sales Performance Analysis

-- 1. Total sales by region
SELECT Region, SUM(Sale_Amount) AS Total_Sales
FROM sales
GROUP BY Region;

-- 2. Sales by product category
SELECT Product_Category, SUM(Sale_Amount) AS Total_Sales
FROM sales
GROUP BY Product_Category;

-- 3. Monthly sales trend
SELECT DATE_FORMAT(Sale_Date, '%Y-%m') AS Month, SUM(Sale_Amount) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

-- 4. Correlation between region and category sales (avg sales)
SELECT Region, Product_Category, AVG(Sale_Amount) AS Avg_Sales
FROM sales
GROUP BY Region, Product_Category;

-- 5. Top 5 performing employees by sales
SELECT Employee_ID, SUM(Sale_Amount) AS Total_Sales
FROM sales
GROUP BY Employee_ID
ORDER BY Total_Sales DESC
LIMIT 5;

-- 6. Average sales per transaction by region
SELECT Region, AVG(Sale_Amount) AS Avg_Sale
FROM sales
GROUP BY Region;

-- 7. Year-over-Year growth
SELECT YEAR(Sale_Date) AS Year, SUM(Sale_Amount) AS Total_Sales
FROM sales
GROUP BY Year
ORDER BY Year;
