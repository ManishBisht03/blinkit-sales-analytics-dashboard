CREATE DATABASE blinkit_dashboard;

USE blinkit_dashboard;

SHOW TABLES;

SELECT COUNT(*) FROM blinkit_cleaned;

SELECT
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned;

SELECT
ROUND(AVG(Item_Outlet_Sales),2) AS Average_Sales
FROM blinkit_cleaned;

SELECT
ROUND(AVG(Item_MRP),2) AS Avg_MRP
FROM blinkit_cleaned;

SELECT
Item_Fat_Content,
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Item_Fat_Content;

SELECT
Item_Type,
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

SELECT
Outlet_Size,
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

SELECT
Outlet_Type,
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

SELECT
Outlet_Location_Type,
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

SELECT
Outlet_Identifier,
ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit_cleaned
GROUP BY Outlet_Identifier
ORDER BY Total_Sales DESC;

describe blinkit_cleaned;
SELECT
ï»¿Item_Identifier,
ROUND(SUM(Item_Outlet_Sales),2) AS Revenue
FROM blinkit_cleaned
GROUP BY ï»¿Item_Identifier
ORDER BY Revenue DESC
LIMIT 10;
