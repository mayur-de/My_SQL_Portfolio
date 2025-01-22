-- 1. BASIC SQL

-- Use NorthWind Dataset
USE NorthWind_Commerce

-- 1.1. SQL Syntax and Queries

--1. Select all columns from the Customers table.

SELECT * FROM Customers

--2. Select the CompanyName and ContactName from the Customers table.

SELECT CompanyName, ContactName
FROM Customers

--3. Select all columns from the Orders table where the OrderDate is in January 1997.
-- Using BETWEEN ensures inclusive range filtering for dates.

SELECT * 
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31'

-- 4. Select the top 5 customers (based on CustomerID) from the Customers table.
-- Best practice: Explicitly specify the sorting order when using TOP.

SELECT TOP 5 * 
FROM Customers
ORDER BY CustomerID DESC

-- 5. Select the OrderID, CustomerID, and OrderDate from the Orders table. Sort by OrderDate in ascending order.

SELECT OrderID, CustomerID, OrderDate
FROM Orders
ORDER BY OrderDate ASC

-- 6. Select the EmployeeID, FirstName, and LastName from the Employees table.

SELECT EmployeeID, FirstName, LastName
FROM Employees

-- 7. Find the ProductName and UnitPrice from the Products table, where the price is greater than 20.

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > 20

-- 8. Select ProductName, QuantityPerUnit, and UnitPrice from the Products table. Only show products that are in the “Beverages” category.
-- Subquery ensures filtering by category name instead of relying on IDs directly

SELECT ProductName, QuantityPerUnit, UnitPrice
FROM Products
WHERE CategoryID = (SELECT CategoryID 
		    FROM Categories 
		    WHERE CategoryName = 'Beverages')

-- 9. Select the first 10 orders from the Orders table.

SELECT TOP 10* 
FROM Orders

-- 10. Select all columns from the Employees table where the LastName is "Davolio".

SELECT * 
FROM Employees
WHERE LastName = 'Davolio'

-- 1.2. Filtering and Sorting

--11. Select all orders from the Orders table where the Freight is greater than 100.

SELECT * 
FROM Orders
WHERE Freight > 100

--12. Find the products with the ProductName containing "sild" in the Products table.
-- Filters products using wildcard '%sild%'.

SELECT *
FROM Products
WHERE ProductName LIKE '%sild%'

-- 13. List the names of customers "ContactName" from the Customers table located in “Germany”.

SELECT ContactName
FROM Customers
WHERE Country = 'Germany'

-- 14. Find the OrderID and OrderDate from the Orders table for orders shipped to “Germany” ("ShipCountry").

SELECT OrderID, OrderDate
FROM Orders
WHERE ShipCountry = 'Germany'

-- 15. Select all orders from the Orders table that were placed between OrderDate 1st March 1997 and 30th June 1997.

SELECT * 
FROM Orders
WHERE OrderDate BETWEEN '1997-03-01' AND '1997-06-30'

-- 16. Select all ProductName and UnitPrice from the Products table where UnitPrice is between 10 and 50.
-- Best practice: BETWEEN is concise for range filtering

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 10 AND 50

-- Alternative using explicit conditions:
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >= 10 AND UnitPrice <= 50

-- Alternative using IN with subquery:
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice IN (SELECT UnitPrice 
		    FROM Products 
		    WHERE UnitPrice BETWEEN 10 AND 50)

-- 17. Select the CompanyName and Country of customers who are from “USA” or “UK”.
-- IN operator is optimal for multiple values.

SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('USA', 'UK')

-- 18. Find the customers from the Customers table who have not placed an order (use subquery).
-- NOT IN excludes rows matching the subquery.
-- Note: LEFT JOIN with NULL check can be more efficient in some cases.

SELECT * 
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID 
			 FROM Customers)

-- 19. Select all orders where the ShippedDate is later than the OrderDate.

SELECT *
FROM Orders
WHERE ShippedDate > OrderDate

-- Using DATEDIFF for better clarity:
-- "DATEDIFF" calculates the difference in days, months, or years depending on the specified unit.

SELECT * 
FROM Orders
WHERE DATEDIFF(DAY, OrderDate, ShippedDate) > 0

-- 20. Select ProductName and UnitPrice for products that have “Condiments” in their category (using the Categories table).

SELECT CategoryID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = (SELECT CategoryID 
		    FROM Categories 
		    WHERE CategoryName = 'Condiments')

-- 21. List all employees who report to “Andrew Fuller” in the Employees table.

SELECT * 
FROM Employees
WHERE ReportsTo = (SELECT EmployeeID 
		   FROM Employees 
		   WHERE FirstName = 'Andrew' AND LastName = 'Fuller')

-- 22. Find all employees who have worked for more than 5 years using the Employees table (use HireDate).
-- Use "DATEDIFF" with "Year" interval - to caclulate year difference
SELECT *
FROM Employees
WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > 5

-- 23. Find the customers whose name starts with “A”.

SELECT *
FROM Customers
WHERE ContactName like 'A%'

-- 24. Find the orders that have not been shipped yet (ShippedDate is NULL).

SELECT *
FROM Orders
WHERE ShippedDate IS NULL

-- 25. Select the ProductName, CategoryName, and UnitPrice for products in the “Seafood” category.
-- Use 'JOIN' to join Categories and Products tables

SELECT P.ProductName, C.CategoryName, P.UnitPrice
FROM Products AS P
JOIN Categories AS C ON C.CategoryID = P.CategoryID
WHERE C.CategoryName = 'Seafood'

