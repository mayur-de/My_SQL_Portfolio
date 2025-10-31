-- DDL 

-- 1: Create a database

-- Q1: Create database named SampleDB
CREATE DATABASE SalesDB

-- Q2: Use database
USE SalesDB

-- Q3: Verify that the database was created successfully and list all available databases. 
SELECT NAME
FROM sys.databases

-- 2. CREATE TABLE – Define Columns and Datatypes
-- 2.1: In SalesDB, create a table Products with columns: ProductID, ProductName, Category, Price

CREATE TABLE Products (
	ProductID INT PRIMARY KEY, 
	ProductName VARCHAR (50) NOT NULL,
	Category VARCHAR (30), 
	Price DECIMAL(10,2))

-- 2.2: Verify that the table was created list all available tables.
SELECT NAME
FROM sys.tables

-- 2.3: Modify the Products table so ProductID auto-increments starting from 1001.

DROP TABLE IF EXISTS Products









-- Use NorthWind Dataset
USE NorthWind_Commerce

-- Temporaty table
CREATE TABLE #YearlySales (
	ProductID INT,
	Year INT,
	TotalSales MONEY)

-- Insert data into it
INSERT INTO #YearlySales (ProductID, Year, TotalSales)
	SELECT OD.ProductID, YEAR(O.OrderDate), SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
	FROM Orders AS O
	JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
	GROUP BY OD.ProductID, YEAR(O.OrderDate)
	ORDER BY OD.ProductID, YEAR(O.OrderDate)

SELECT * FROM #YearlySales
ORDER BY ProductID, Year

SELECT Year, SUM(TotalSales) as TotalSale
FROM #YearlySales
GROUP BY Year
ORDER BY Year



-- 
CREATE TABLE #MonthlyRevenue AS
SELECT 
    ProductID,
    YEAR(OrderDate) AS Yr,
    MONTH(OrderDate) AS Mo,
    SUM(SalesAmount) AS TotalSales
FROM Orders
GROUP BY ProductID, YEAR(OrderDate), MONTH(OrderDate);


