-- Total Records
SELECT COUNT(*) AS Total_Records
FROM orders;

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM orders;

-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Sales by Category
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Customer Segment
SELECT Segment,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Top 10 Products
SELECT Product_Name,
       ROUND(SUM(Sales),2) AS Revenue
FROM orders
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

-- Shipping Mode Analysis
SELECT Ship_Mode,
       COUNT(*) AS Total_Orders
FROM orders
GROUP BY Ship_Mode
ORDER BY Total_Orders DESC;

-- Top States by Sales
SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT Month,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY Month
ORDER BY Total_Sales DESC;
